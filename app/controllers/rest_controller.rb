class RestController < ApplicationController
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
    require 'rexml/document'
    require 'htmlentities'

    enc=HTMLEntities.new

    config=  Rails.application.config

    $fi={:AuthenticationCode=>enc.encode(config.wsdl_authcode),:MerchantCode=>enc.encode(config.wsdl_merchantcode)}
    str=<<XML
<?xml version="1.0" encoding="utf-8"?>
<GetFinancialInstitutionsRequest xmlns="http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
<AuthenticationCode>#{$fi[:AuthenticationCode]}</AuthenticationCode>
<MerchantCode>#{$fi[:MerchantCode]}</MerchantCode>
</GetFinancialInstitutionsRequest>
XML

    if config.testmode
      $url="https://merchantapi.apac-test.paywithpoli.com/MerchantAPIService.svc/Xml/banks"

    else

      $url="https://merchantapi.apac.paywithpoli.com/MerchantAPIService.svc/Xml/banks"
    end

    response=RestClient.post $url ,str,:content_type=>'text/xml'

    if  !response.code.present? || response.code.to_i !=200
      render :text=>'html error'
    return
    end

    xml= response.body

    doc = REXML::Document.new(xml)
    fins=Array.new
    doc.elements.each('//Errors/a:Error') do |ele|

      render :json=> {'error'=>:ele.get_text('a:Message').to_s}
      return

    end
    str=''
    doc.elements.each('//FinancialInstitutionList/a:FinancialInstitution') do |ele|
      fins.push  :FinancialInstitutionCode=>ele.get_text('a:FinancialInstitutionCode').to_s,:FinancialInstitutionName=>ele.get_text('a:FinancialInstitutionName').to_s
    end

    render :json=>{'options'=>fins }

  end

  def initiatetransaction

    require 'rexml/document'
    require 'htmlentities'

    Time::DATE_FORMATS[:dateformat]='%Y-%m-%dT%H:%M:%S'

    enc=HTMLEntities.new

    amt=params['PaymentAmount']

    if !session[:order].present?
      render :text=> "merchant reference not present "+request.session_options[:id]
    return
    elsif !params['PaymentAmount'].present?
      render :text=> "Payment amount required."
    return
    elsif !params['CurrencyCode'].present?
      render :text=> "Currency Code required."
    return
    elsif amt.to_f <=0
      render :text=> "amt "+amt
    return
    end

    order=session[:order]
    currencycode=params['CurrencyCode']

    config=  Rails.application.config
    $fi={:AuthenticationCode=>enc.encode(config.wsdl_authcode),:MerchantCode=>enc.encode(config.wsdl_merchantcode)}

    $input=RestInitiateTransactionInput.new
    $input.CurrencyAmount=amt
    $input.CurrencyCode=currencycode
    $input.MerchantData=request.session_options[:id]
    $input.SelectedFICode=params['FinancialInstutionCode']
    $input.MerchantRef= session[:order]
    
    $input.NotificationURL="http://"+request.host_with_port+"/rest/notify"
    $input.SuccessfulURL='http://'+request.host_with_port+'/rest/receipt'
    $input.UnsuccessfulURL='http://'+request.host_with_port
    $input.MerchantCheckoutURL='http://'+request.host_with_port+'/rest'
    $input.MerchantHomePageURL='http://'+request.host_with_port
    $input.Timeout=1000
    $input.MerchantDateTime= DateTime.current().to_s :dateformat

    $str=<<HTML
<?xml version="1.0" encoding="utf-8"?>
<InitiateTransactionRequest xmlns="http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
<AuthenticationCode>#{$fi[:AuthenticationCode]}</AuthenticationCode>
<Transaction xmlns:dco="http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO">
<dco:CurrencyAmount>#{$input.CurrencyAmount}</dco:CurrencyAmount>
<dco:CurrencyCode>#{$input.CurrencyCode}</dco:CurrencyCode>
<dco:MerchantCheckoutURL>#{$input.MerchantCheckoutURL}</dco:MerchantCheckoutURL>
<dco:MerchantCode>#{$fi[:MerchantCode]}</dco:MerchantCode>
<dco:MerchantData>#{$input.MerchantData}</dco:MerchantData>
<dco:MerchantDateTime>#{$input.MerchantDateTime}</dco:MerchantDateTime>
<dco:MerchantHomePageURL>#{$input.MerchantHomePageURL}</dco:MerchantHomePageURL>
<dco:MerchantRef>#{$input.MerchantRef}</dco:MerchantRef>
<dco:NotificationURL>#{$input.NotificationURL}</dco:NotificationURL>
HTML

    if $input.SelectedFICode.present?
      $str+='<dco:SelectedFICode>'+$input.SelectedFICode+'</dco:SelectedFICode>'
    else
      $str+='<dco:SelectedFICode i:nil="true"/>'
    end

    $str+=<<HTML
<dco:SuccessfulURL>#{$input.SuccessfulURL}</dco:SuccessfulURL>
<dco:Timeout>#{$input.Timeout}</dco:Timeout>
<dco:UnsuccessfulURL>#{$input.UnsuccessfulURL}</dco:UnsuccessfulURL>
<dco:UserIPAddress>#{$input.UserIPAddress}</dco:UserIPAddress>
</Transaction>
</InitiateTransactionRequest>
HTML
    if config.testmode
      $url="https://merchantapi.apac-test.paywithpoli.com/MerchantAPIService.svc/Xml/transaction/initiate"

    else

      $url="https://merchantapi.apac.paywithpoli.com/MerchantAPIService.svc/Xml/transaction/initiate"
    end

    response=RestClient.post $url ,$str,:content_type=>'text/xml'

    if  !response.code.present? || response.code.to_i !=200
      render :text=>'html error'
    return
    end

    xml=response.body

    doc = REXML::Document.new(xml)
    doc.elements.each('//Errors/a:Error') do |ele|
    #display first error message and return

      str+= "Code:" +ele.get_text('a:Code').to_s

      str+= "Field:" +ele.get_text('a:Field').to_s

      str+= "Message:" +ele.get_text('a:Message').to_s+"<br/>"

      render :text=>str
      return
    end

    status=doc.root.get_text("//TransactionStatusCode").to_s

    token=doc.root.get_text("//Transaction/a:TransactionToken").to_s
    navigateURL=doc.root.get_text("//Transaction/a:NavigateURL").to_s
    refno=doc.root.get_text("//Transaction/a:TransactionRefNo").to_s

    if status !='Initiated' &&status!='FinancialInstitutionSelected'
      render :text=>'Not initiated'
    return
    end

    t=Transactions.new

    session[:tref]=refno
    t.orderno=session[:order]
    t.status=0
    t.refno= refno
    t.currency=currencycode
    t.amount=amt
    t.token=token

    t.save
    session[:tref]=refno
    redirect_to navigateURL

  end

  def notify
    require 'rexml/document'
    require 'htmlentities'

    if ! params[:Token].present?
      render :text=>'Invalid'
    return
    end

    enc=HTMLEntities.new

    config=  Rails.application.config

    $fi={:AuthenticationCode=>enc.encode(config.wsdl_authcode),:MerchantCode=>enc.encode(config.wsdl_merchantcode)}

    if config.testmode
      $url='https://merchantapi.apac-test.paywithpoli.com/MerchantAPIService.svc/Xml/transaction/query'
    else
      $url='https://merchantapi.apac.paywithpoli.com/MerchantAPIService.svc/Xml/transaction/query'
    end

    $token=params[:Token]

    $str=<<HTML
<?xml version="1.0" encoding="utf-8"?>
<GetTransactionRequest xmlns="http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
<AuthenticationCode>#{$fi[:AuthenticationCode]}</AuthenticationCode>
<MerchantCode>#{$fi[:MerchantCode]}</MerchantCode>
<TransactionToken>#{$token}</TransactionToken>
</GetTransactionRequest>
HTML

    response=RestClient.post $url ,$str,:content_type=>'text/xml'

    if  !response.code.present? || response.code.to_i !=200
      render :text=>'html error'
    return
    end

    xml=response.body
    doc = REXML::Document.new(xml)
    doc.elements.each('//Errors/a:Error') do |ele|
    #display first error message and return

      str+= "Code:" +ele.get_text('a:Code').to_s

      str+= "Field:" +ele.get_text('a:Field').to_s

      str+= "Message:" +Rele.get_text('a:Message').to_s+"<br/>"

      render :text=>str
      return
    end

    status=doc.root.get_text("//TransactionStatusCode").to_s

    if status=='Completed'

      ele =REXML::XPath.first(doc.root,"//Transaction")

      tref=ele.get_text('a:TransactionRefNo').to_s
      mref=ele.get_text('a:MerchantReference').to_s

      trrec= Transactions.where("refno=? and orderno=?",tref,mref).limit(1).first #search in transaction table
      if trrec.nil?
      ## log error
      return
      end
      #order not found in db

      amp=ele.get_text('a:AmountPaid').to_s.to_f
      cur=ele.get_text('a:CurrencyCode').to_s
      if trrec[:status].to_i == 1
        render :text=>'Processed'
      return #already processed

      end

      if amp != trrec[:amount].to_f || trrec[:currency]!=cur
        render :text=>'Invalid amt'
      end
      trrec[:status]=1

  sql = ActiveRecord::Base.connection();
    sql.begin_db_transaction 
  sql.execute "update transactions set status=0 where orderno="+trrec.orderno+" and refno="+trrec.refno
  sql.commit_db_transaction 

      rec=Receipts.new

      rec['AmountPaid']=ele.get_text('a:AmountPaid').to_s
      rec['BankReceipt']=ele.get_text('a:BankReceipt').to_s
      rec['BankReceiptDateTime']=ele.get_text('a:BankReceiptDateTime').to_s
      rec['CountryCode']=ele.get_text('a:CountryCode').to_s
      rec['CountryName']=ele.get_text('a:CountryName').to_s
      rec['CurrencyCode']=ele.get_text('a:CurrencyCode').to_s
      rec['CurrencyName']=ele.get_text('a:CurrencyName').to_s
      rec['EndDateTime']=ele.get_text('a:EndDateTime').to_s
      rec['ErrorCode']=ele.get_text('a:ErrorCode').to_s
      rec['ErrorMessage']=ele.get_text('a:ErrorMessage').to_s
      rec['EstablishedDateTime']=ele.get_text('a:EstablishedDateTime').to_s
      rec['FinancialInstitutionCode']=ele.get_text('a:FinancialInstitutionCode').to_s
      rec['FinancialInstitutionCountryCode']=ele.get_text('a:FinancialInstitutionCountryCode').to_s
      rec['FinancialInstitutionName']=ele.get_text('a:FinancialInstitutionName').to_s
      rec['MerchantAcctName']=ele.get_text('a:MerchantAcctName').to_s
      rec['MerchantAcctNumber']=ele.get_text('a:MerchantAcctNumber').to_s
      rec['MerchantAcctSortCode']=ele.get_text('a:MerchantAcctSortCode').to_s
      rec['MerchantAcctSuffix']=ele.get_text('a:MerchantAcctSuffix').to_s
      rec['MerchantDefinedData']=ele.get_text('a:MerchantDefinedData').to_s
      rec['MerchantEstablishedDateTime']=ele.get_text('a:MerchantEstablishedDateTime').to_s
      rec['MerchantReference']=ele.get_text('a:MerchantReference').to_s
      rec['PaymentAmount']=ele.get_text('a:PaymentAmount').to_s
      rec['StartDateTime']=ele.get_text('a:StartDateTime').to_s
      rec['TransactionID']=ele.get_text('a:TransactionID').to_s
      rec['TransactionRefNo']=ele.get_text('a:TransactionRefNo').to_s

      rec.save #record saved for use in receipt generation
      render :text=>'ok'
    return

    end #completed status codes

  end

  def receipt

    if !session[:order].present? ||!session[:tref].present?
      render :text=>'Session expired'
    else
      rec=Receipts.new
      @receipt=  Receipts.where("TransactionRefNo = ? and MerchantReference =? ",session[:tref],session[:order]).limit(1).first
      if !@receipt.nil?
        session.clear #order processed clear merchant ref and transaction ref in session.
      end
    end

  end

  def merchant
    require 'rexml/document'
    require 'htmlentities'
    Time::DATE_FORMATS[:dateformat]='%Y-%m-%dT%H:%M:%S'
    enc=HTMLEntities.new
    config=  Rails.application.config

    $fi={:AuthenticationCode=>enc.encode(config.wsdl_authcode),:MerchantCode=>enc.encode(config.wsdl_merchantcode)}

    if params[:submit].present?

      if config.testmode
        $url='https://merchantapi.apac-test.paywithpoli.com/merchantapiservice.svc/Xml/transaction/daily';
      else
        $url='https://merchantapi.apac.paywithpoli.com/merchantapiservice.svc/Xml/transaction/daily';
      end
      $codes=nil

      if params[:status].present?
        $codes=params[:status].join ','
      end
      $d=params[:day]
      $str=<<HTML
<GetDailyTransactionsRequest
xmlns="http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
<AuthenticationCode>#{$fi[:AuthenticationCode]}</AuthenticationCode>
<MerchantCode>#{$fi[:MerchantCode]}</MerchantCode>
<EstablishedDate>#{$d}</EstablishedDate>
HTML
      if !$codes.nil?
        $str+= "<TransactionStatusCode>#{$codes}</TransactionStatusCode>"

      end

      $str+="</GetDailyTransactionsRequest>"
      HTML
      response=RestClient.post $url ,$str,:content_type=>'text/xml'
      if !response.code.present? || response.code.to_i != 200
        render :text=>'Error '
      return
      end

      xml=response.body

      doc = REXML::Document.new(xml)
      doc.elements.each('//Errors/a:Error') do |ele|
      #display first error message and return

        str+= "Code:" +ele.get_text('a:Code').to_s

        str+= "Field:" +ele.get_text('a:Field').to_s

        str+= "Message:" +ele.get_text('a:Message').to_s+"<br/>"

        render :text=>str
        return
      end

      @transactions=Array.new
      doc.root.elements.each('//DailyTransactionList/a:DailyTransaction') do |ele|
        transaction={}
        transaction['AmountPaid']=ele.get_text('a:AmountPaid').to_s
        transaction['BankReceiptNo']=ele.get_text('a:BankReceiptNo').to_s
        transaction['CurrencyCode']=ele.get_text('a:CurrencyCode').to_s
        transaction['CurrencyName']=ele.get_text('a:CurrencyName').to_s
        transaction['EndDateTime']=ele.get_text('a:EndDateTime').to_s
        transaction['EstablishedDateTime']=ele.get_text('a:EstablishedDateTime').to_s
        transaction['FinancialInstitutionCode']=ele.get_text('a:FinancialInstitutionCode').to_s
        transaction['FinancialInstitutionName']=ele.get_text('a:FinancialInstitutionName').to_s
        transaction['MerchantCode']=ele.get_text('a:MerchantCode').to_s
        transaction['MerchantCommonName']=ele.get_text('a:MerchantCommonName').to_s
        transaction['MerchantDefinedData']=ele.get_text('a:MerchantDefinedData').to_s
        transaction['MerchantReference']=ele.get_text('a:MerchantReference').to_s
        transaction['PayerAcctNumber']=ele.get_text('a:PayerAcctNumber').to_s
        transaction['PayerAcctSortCode']=ele.get_text('a:PayerAcctSortCode').to_s
        transaction['PayerAcctSuffix']=ele.get_text('a:PayerAcctSuffix').to_s
        transaction['PaymentAmount']=ele.get_text('a:PaymentAmount').to_s
        transaction['TransactionRefNo']=ele.get_text('a:TransactionRefNo').to_s
        transaction['TransactionStatus']=ele.get_text('a:TransactionStatus').to_s
        transaction['TransactionStatusCode']=ele.get_text('a:TransactionStatusCode').to_s
        @transactions.push transaction

      end
    elsif params[:csv].present?#submit

      if config.testmode
        $url='https://merchantapi.apac-test.paywithpoli.com/merchantapiservice.svc/Xml/transaction/daily/csv';
      else
        $url='https://merchantapi.apac.paywithpoli.com/merchantapiservice.svc/Xml/transaction/daily/csv';
      end

      $str=<<HTML
<GetDailyTransactionsCSVRequest xmlns="http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
<AuthenticationCode>#{$fi[:AuthenticationCode]}</AuthenticationCode>
<MerchantCode>#{$fi[:MerchantCode]}</MerchantCode>
<EstablishedDate>#{params[:day]}</EstablishedDate>
HTML

      if !$codes.nil?
        $str+= "<TransactionStatusCode>#{$codes}</TransactionStatusCode>"
      end
      $str+=<<HTML
</GetDailyTransactionsCSVRequest>
HTML
      response=RestClient.post $url ,$str,:content_type=>'text/xml'

      if  !response.code.present? || response.code.to_i !=200
        render :text=>'html error'
      return
      end

      xml=response.body

      doc = REXML::Document.new(xml)
      str=''
      doc.elements.each('//Errors/a:Error') do |ele|
      #display first error message and return

        str+= "Code:" +ele.get_text('a:Code').to_s

        str+= "Field:" +ele.get_text('a:Field').to_s

        str+= "Message:" +ele.get_text('a:Message').to_s+"<br/>"

        render :text=>str
        return
      end

      str=doc.root.get_text("//CSVData").to_s
      render :text=>str

    end#csv
    @date=DateTime.current().to_s :dateformat

  end

  def transaction
    require 'rexml/document'
    require 'htmlentities'
    Time::DATE_FORMATS[:dateformat]='%Y-%m-%dT%H:%M:%S'
    enc=HTMLEntities.new

    config=  Rails.application.config

    $fi={:AuthenticationCode=>enc.encode(config.wsdl_authcode),:MerchantCode=>enc.encode(config.wsdl_merchantcode)}

    if config.testmode
      $url='https://merchantapi.apac-test.paywithpoli.com/merchantapiservice.svc/Xml/transaction/detail';

    else
      $url='https://merchantapi.apac.paywithpoli.com/merchantapiservice.svc/Xml/transaction/detail';
    end

    $str=<<HTML
<GetDetailedTransactionRequest
xmlns="http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
<AuthenticationCode>#{$fi[:AuthenticationCode]}</AuthenticationCode>
<MerchantCode>#{$fi[:MerchantCode]}</MerchantCode>
<IncludeSteps>true</IncludeSteps>
HTML
    if params[:orderno].present?
      $str+="<MerchantReference>" +params[:orderno]+ "</MerchantReference>"
    end
    if params[:tref].present?
      $str+="<TransactionRefNo>"+params[:tref]+"</TransactionRefNo>"
    end

    $str+="</GetDetailedTransactionRequest>"

    @transaction={}

    response=RestClient.post $url ,$str,:content_type=>'text/xml'

    if  !response.code.present? || response.code.to_i !=200
      render :text=>'html error'
    return
    end

    xml=response.body

    doc = REXML::Document.new(xml)
    doc.elements.each('//Errors/a:Error') do |ele|
    #display first error message and return

      str+= "Code:" +ele.get_text('a:Code').to_s

      str+= "Field:" +ele.get_text('a:Field').to_s

      str+= "Message:" +ele.get_text('a:Message').to_s+"<br/>"

      render :text=>str
      return
    end

    ele=REXML::XPath.first(doc.root,"//DetailedTransaction")

    @transaction['AmountPaid']=ele.get_text('a:AmountPaid').to_s
    @transaction['BankReceiptNo']=ele.get_text('a:BankReceiptNo').to_s
    @transaction['CurrencyCode']=ele.get_text('a:CurrencyCode').to_s
    @transaction['CurrencyName']=ele.get_text('a:CurrencyName').to_s
    @transaction['EndDateTime']=ele.get_text('a:EndDateTime').to_s
    @transaction['EstablishedDateTime']=ele.get_text('a:EstablishedDateTime').to_s
    @transaction['FailureReason']=ele.get_text('a:FailureReason').to_s
    @transaction['FinancialInstitutionCode']=ele.get_text('a:FinancialInstitutionCode').to_s
    @transaction['FinancialInstitutionName']=ele.get_text('a:FinancialInstitutionName').to_s
    @transaction['MerchantCode']=ele.get_text('a:MerchantCode').to_s
    @transaction['MerchantCommonName']=ele.get_text('a:MerchantCommonName').to_s
    @transaction['MerchantDefinedData']=ele.get_text('a:MerchantDefinedData').to_s
    @transaction['MerchantReference']=ele.get_text('a:MerchantReference').to_s
    @transaction['PayerAcctNumber']=ele.get_text('a:PayerAcctNumber').to_s
    @transaction['PayerAcctSortCode']=ele.get_text('a:PayerAcctSortCode').to_s
    @transaction['PayerAcctSuffix']=ele.get_text('a:PayerAcctSuffix').to_s
    @transaction['PaymentAmount']=ele.get_text('a:PaymentAmount').to_s
    @transaction['TransactionRefNo']=ele.get_text('a:TransactionRefNo').to_s
    @transaction['TransactionStatus']=ele.get_text('a:TransactionStatus').to_s
    @transaction['TransactionStatusCode']=ele.get_text('a:TransactionStatusCode').to_s
    @transaction['UserIPAddress']=ele.get_text('a:UserIPAddress').to_s
    @transaction['UserPlatform']=ele.get_text('a:UserPlatform').to_s

    @steps=Array.new

    doc.root.elements.each("//TransactionStepList/a:TransactionStepsList") do |ele|

      step={}
      step['TransactionStepTypeName']=ele.get_text('a:TransactionStepTypeName').to_s
      step['CreatedDateTime']=ele.get_text('a:CreatedDateTime').to_s
      @steps.push step
    end

  end
end
