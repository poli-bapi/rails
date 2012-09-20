class WsdlController < ApplicationController
     skip_before_filter :verify_authenticity_token

  def index
if (session[:order])
  d=session[:order]
else  
    d=DateTime.current().to_i
   session[:order]=d
end
   render :layout=>false
    
  end
  
  
  def financialinstitutes
require 'MerchantAPIServiceDriver.rb'
    config=Rails.application.config
    endpoint_url = "http://merchantapi.apac-test.paywithpoli.com/MerchantAPIService.svc"
obj = MerchantAPIService.new()



req= GetFinancialInstitutionsRequest.new 
req.authenticationCode=config.wsdl_authcode
req.merchantCode=config.wsdl_merchantcode
parameters=GetFinancialInstitutions.new req
str=''
if ! config.wsdl_merchantcode.present?
  str='no code'
else
  str=config.wsdl_merchantcode
end

r= obj.getFinancialInstitutions(parameters)
fins=Array.new
if  r.getFinancialInstitutionsResult.errors.length>0 

 r.getFinancialInstitutionsResult.errors.each { |error| 
#  p "Error ####################"
#  p error.to_json
  render :text=>error.message + str+" "+config.wsdl_url
  }  
else
 r.getFinancialInstitutionsResult.financialInstitutionList.each {|fin|
fins.push :code=>fin.financialInstitutionCode,:name=>fin.financialInstitutionName
}
render :json=> {'options'=>fins}
end

    
  end





  def initiatetransaction
   Time::DATE_FORMATS[:dateformat]='%Y-%m-%dT%H:%M:%S'

    
    require 'MerchantAPIServiceDriver.rb'
     amt=params['PaymentAmount'];

if !session[:order].present?
render :text=> "merchant reference not present "+request.session_options[:id]
elsif !params['PaymentAmount'].present? 
render :text=> "Payment amount required."
elsif !params['CurrencyCode'].present?
  render :text=> "Currency Code required."
elsif amt.to_f <=0
  render :text=> "amt "+amt
else

     order=session[:order]
     currencycode=params['CurrencyCode'];
config=Rails.application.config

endpoint_url = "http://merchantapi.apac-test.paywithpoli.com/MerchantAPIService.svc"
obj = MerchantAPIService.new


ttr=InitiateTransaction.new

req=InitiateTransactionRequest.new

tr=InitiateTransactionInput.new
tr.currencyCode=currencycode;
tr.currencyAmount=amt

tr.merchantCode=config.wsdl_merchantcode
tr.merchantData=request.session_options[:id]
if params['FinancialInstutionCode'].present?
tr.selectedFICode=params['FinancialInstutionCode']
end
tr.merchantRef= session['order'];

#use your own url here #
tr.notificationURL= "http://"+request.host_with_port+"/wsdl/notify"#request.host_with_port+'/wsdl/notify'
tr.successfulURL='http://'+request.host_with_port+'/wsdl/receipt'
tr.unsuccessfulURL='http://'+request.host_with_port
tr.merchantCheckoutURL='http://'+request.host_with_port+'/wsdl'
tr.merchantHomePageURL='http://'+request.host_with_port


tr.timeout=1000;
tr.merchantDateTime= DateTime.current().to_s :dateformat
req.transaction=tr;
req.authenticationCode=config.wsdl_authcode;

ttr.request=req

r=obj.initiateTransaction(ttr)

res=r.initiateTransactionResult
  str=''  
 if res.errors.length>0
   res.errors.each { |error| 
     str+=" code "+error.code
     str+="field "+error.field
#
     str+="msg "+error.message
     str+="##"
 #  p "Error ####################"
#  p error.to_json
  }     
  render :text=>str
    
  else
    if res.transactionStatusCode !='Initiated' &&  res.transactionStatusCode !='FinancialInstitutionSelected'
      render :text=>'Not initiated'
      return
    end
    
    t=Transactions.new
    
tx=res.transaction
#tx.navigateURL
#tx.transactionRefNo
#tx.transactionToken
session[:tref]=tx.transactionRefNo
 t.orderno=tr.merchantRef
 t.status=0
 t.refno=tx.transactionRefNo
  t.currency=tr.currencyCode
 t.amount=tr.currencyAmount
 t.token=tx.transactionToken
# t.token=
# f

t.save        
    redirect_to tx.navigateURL
    

   end #no error
   

end
  end



  def notify

    require 'MerchantAPIServiceDriver.rb'
    
    obj = MerchantAPIService.new
config=Rails.application.config
    token=params[:Token]
  trns=GetTransaction.new
   req=GetTransactionRequest.new
  req.authenticationCode=config.wsdl_authcode
  req.merchantCode=config.wsdl_merchantcode
  req.transactionToken=token
  trns.request=req
  

  res=    obj.getTransaction(trns)
  gtr=  res.getTransactionResult

if gtr.errors.length>0 
  gtr.errors.each {|error|
    #log errors as required
    }
    render :text=>'error'
    return
end

if gtr.transactionStatusCode=='Completed'
#enter separate blocks for other response codes
 tr=gtr.transaction 
  amp=tr.amountPaid.to_f
  cur=tr.currencyCode 
 trrec= Transactions.where("refno=? and orderno=?",tr.transactionRefNo,tr.merchantReference).limit(1).first #search in transaction table 
 if !trrec[:orderno]
   render :text=> "No order"
   return
   #order not found in db 
  end
 if trrec[:status].to_i == 1
  render :text=>'Processed'
  return #already processed
  
end
if amp != trrec[:amount].to_f || trrec[:currency]!=cur 
  render :text=>'Invalid amt'
end

 trrec[:status]=1
 
   sql = ActiveRecord::Base.connection();#ruby doesn't support composite primary key you may modify the table to have simple primary key and use model save trrec.save
    sql.begin_db_transaction 
  sql.execute "update transactions set status=1 where orderno="+trrec.orderno+" and refno="+trrec.refno
  sql.commit_db_transaction 

 
 rec=Receipts.new
 
 tr.instance_variables.each {|key|
   k=key.to_s.delete("@")
   rec[k.slice(0,1).capitalize+k.slice(1..-1)] = tr.instance_variable_get(key)  #update the receipt table. build detailed query in production environment
   
   }
   rec.save #record saved for use in receipt generation
   render :text=>'ok'
   return

  
end #completed status codes
 
 
render :text=>'ok'
end
 
 
 
  def receipt
   
    if !session[:order].present? ||!session[:tref].present?
     render :text=>'Session expired'
    else
      rec=Receipts.new
    @receipt=  Receipts.where("TransactionRefNo = ? and MerchantReference =? ",session[:tref],session[:order]).limit(1).first
     if !@receipt.nil?
       session.clear
     end
     
     end
    
    
  end  
  
  
  
  
  def merchant
    @transactions=nil
        require 'MerchantAPIServiceDriver.rb'
    
    obj = MerchantAPIService.new
config=Rails.application.config

    if params[:submit]
      dailytrns=GetDailyTransactions.new
      req=GetDailyTransactionsRequest.new
      req.authenticationCode=config.wsdl_authcode
      req.merchantCode=config.wsdl_merchantcode
      req.establishedDate=params[:day]
      if params[:status].present? 
             req.transactionStatusCode=params[:status].join ','
      end
      dailytrns.request=req


r=      obj.getDailyTransactions(dailytrns)
 
 resp=  r.getDailyTransactionsResult    
 
 if resp.errors.length>0 
  resp.errors.each {|error|
    #log errors as required
    }
    render :text=>'error'
    return
  end
@transactions= resp.dailyTransactionList


    elsif params[:csv]
  
     dailytrns=GetDailyTransactionsCSV.new
      req=GetDailyTransactionsCSVRequest.new
      req.authenticationCode=config.wsdl_authcode
      req.merchantCode=config.wsdl_merchantcode
      req.establishedDate=params[:day]
      if params[:status].present? 
             req.transactionStatusCode=params[:status].join ','
      end
      dailytrns.request=req
      
r=      obj.getDailyTransactionsCSV(dailytrns)

 resp=  r.getDailyTransactionsCSVResult    
 str=''
 if resp.errors.length>0 
  resp.errors.each {|error|
    str+=error.message
    str+' # '+error.code
    #log errors as required
    }
    render :text=>'error'+str
    return
  end

    render :text=>resp.cSVData
      
    end
    
  tf=     Time::DATE_FORMATS[:dateformat]='%Y-%m-%dT%H:%M:%S'
  @date=DateTime.current.to_s(:dateformat)

  end



  def transaction


    require 'MerchantAPIServiceDriver.rb'
    
    obj = MerchantAPIService.new
  config=Rails.application.config
  dt=GetDetailedTransaction.new
req=GetDetailedTransactionRequest.new
  
  req.authenticationCode=config.wsdl_authcode
  req.merchantCode=config.wsdl_merchantcode
  
  if params[:tref].present?
    req.transactionRefNo=params[:tref]
  end
  if params[:orderno].present?
   req.merchantReference  =params[:orderno]
  end
  dt.request=req
  
  req.includeSteps=true #put false if not required.
   
r=  obj.getDetailedTransaction(dt)
 resp=r.getDetailedTransactionResult
  
   if resp.errors.length>0 
  resp.errors.each {|error|
    #log errors as required
    }
    render :text=>'error'
    return
  end
@transaction=resp.detailedTransaction
@steps=resp.transactionStepList #comment out  if includesteps=false above

  

  end

end
