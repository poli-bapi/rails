require_relative 'MerchantAPIService.rb'
require_relative 'MerchantAPIServiceMappingRegistry.rb'
require 'soap/rpc/driver'

class MerchantAPIService < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://merchantapi.apac-test.paywithpoli.com/MerchantAPIService.svc"

  Methods = [
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/Echo",
      "echo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "Echo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "EchoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/InitiateTransaction",
      "initiateTransaction",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "InitiateTransaction"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "InitiateTransactionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/GetTransaction",
      "getTransaction",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetTransaction"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetTransactionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/GetTransactionPlus",
      "getTransactionPlus",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetTransactionPlus"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetTransactionPlusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/GetFinancialInstitutions",
      "getFinancialInstitutions",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetFinancialInstitutions"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetFinancialInstitutionsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/GetDocumentation",
      "getDocumentation",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDocumentation"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDocumentationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/GetDailyTransactions",
      "getDailyTransactions",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDailyTransactions"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDailyTransactionsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/GetDailyTransactionsCSV",
      "getDailyTransactionsCSV",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDailyTransactionsCSV"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDailyTransactionsCSVResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/GetDetailedTransaction",
      "getDetailedTransaction",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDetailedTransaction"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDetailedTransactionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = MerchantAPIServiceMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = MerchantAPIServiceMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

class MerchantAPIService < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://merchantapi.apac-test.paywithpoli.com/MerchantAPIService.svc"

  Methods = [
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/Echo",
      "echo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "Echo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "EchoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/InitiateTransaction",
      "initiateTransaction",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "InitiateTransaction"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "InitiateTransactionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/GetTransaction",
      "getTransaction",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetTransaction"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetTransactionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/GetTransactionPlus",
      "getTransactionPlus",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetTransactionPlus"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetTransactionPlusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/GetFinancialInstitutions",
      "getFinancialInstitutions",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetFinancialInstitutions"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetFinancialInstitutionsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/GetDocumentation",
      "getDocumentation",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDocumentation"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDocumentationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/GetDailyTransactions",
      "getDailyTransactions",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDailyTransactions"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDailyTransactionsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/GetDailyTransactionsCSV",
      "getDailyTransactionsCSV",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDailyTransactionsCSV"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDailyTransactionsCSVResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ],
    [ "http://merchantapiservice.services.poli.centricom.com/MerchantAPIService/GetDetailedTransaction",
      "getDetailedTransaction",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDetailedTransaction"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://merchantapiservice.services.poli.centricom.com/", "GetDetailedTransactionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MerchantApiFaultFault"=>{:use=>"literal", :ns=>"http://services.poli.centricom.com/MerchantAPI/binding", :name=>"MerchantApiFaultFault", :namespace=>nil, :encodingstyle=>"document"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = MerchantAPIServiceMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = MerchantAPIServiceMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

