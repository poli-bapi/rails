Poly::Application.routes.draw do



  match "rest"=>'rest#index'
  get "rest/financialinstitutes"
  post "rest/initiatetransaction" 
  match "rest/transaction" =>'rest#transaction'
  match 'rest/receipt'=>'rest#receipt'
  match 'rest/notify'=>'rest#notify'
  match 'rest/merchant'=>'rest#merchant'
  post 'rest/merchant'=>'rest#merchant'


  
  match "wsdl" => 'wsdl#index'
  get "wsdl/financialinstitutes"
  post "wsdl/initiatetransaction" 
  match "wsdl/transaction" =>'wsdl#transaction'
  match 'wsdl/receipt'=>'wsdl#receipt'
  match 'wsdl/notify'=>'wsdl#notify'
  match 'wsdl/merchant'=>'wsdl#merchant'

end
