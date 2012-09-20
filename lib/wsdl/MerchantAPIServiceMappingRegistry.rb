require_relative 'MerchantAPIService.rb'
require 'soap/mapping'

module MerchantAPIServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsCentricomPOLiServicesMerchantAPIContracts = "http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts"
  NsCentricomPOLiServicesMerchantAPIDCO = "http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO"
  NsMerchantapiserviceServicesPoliCentricomCom = "http://merchantapiservice.services.poli.centricom.com/"

  EncodedRegistry.register(
    :class => MerchantApiFault,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantApiFault"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Description")], [0, 1]],
      ["errorCode", ["SOAP::SOAPInt", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ErrorCode")]],
      ["transactionStatus", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatus")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => InitiateTransactionRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "InitiateTransactionRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["transaction", ["InitiateTransactionInput", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Transaction")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => InitiateTransactionResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "InitiateTransactionResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "POLiBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]],
      ["transaction", ["InitiateTransactionOutput", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Transaction")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => POLiBaseResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "POLiBaseResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "BaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => BaseResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "BaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetTransactionRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetTransactionRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["transactionToken", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionToken")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetTransactionResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetTransactionResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "POLiBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]],
      ["transaction", ["Transaction", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Transaction")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetTransactionPlusRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetTransactionPlusRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["transactionToken", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionToken")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetTransactionPlusResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetTransactionPlusResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "POLiBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]],
      ["transaction", ["TransactionPlusByTransactionRefNo", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Transaction")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetFinancialInstitutionsRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetFinancialInstitutionsRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetFinancialInstitutionsResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetFinancialInstitutionsResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "POLiBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]],
      ["financialInstitutionList", ["ArrayOfFinancialInstitution", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "FinancialInstitutionList")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetDailyTransactionsRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDailyTransactionsRequest"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["establishedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "EstablishedDate")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ReportBaseRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetDailyTransactionsResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDailyTransactionsResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["dailyTransactionList", ["ArrayOfDailyTransaction", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "DailyTransactionList")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ReportBaseResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "BaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetDailyTransactionsCSVRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDailyTransactionsCSVRequest"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDailyTransactionsRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["establishedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "EstablishedDate")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetDailyTransactionsCSVResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDailyTransactionsCSVResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["cSVData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "CSVData")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetDetailedTransactionRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDetailedTransactionRequest"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["includeSteps", ["SOAP::SOAPBoolean", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "IncludeSteps")]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantReference")], [0, 1]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionRefNo")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetDetailedTransactionResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDetailedTransactionResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["detailedTransaction", ["DetailedTransaction", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "DetailedTransaction")], [0, 1]],
      ["transactionStepList", ["ArrayOfTransactionStepsList", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStepList")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => InitiateTransactionInput,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "InitiateTransactionInput"),
    :schema_element => [
      ["currencyAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyAmount")]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["merchantCheckoutURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCheckoutURL")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCode")], [0, 1]],
      ["merchantData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantData")], [0, 1]],
      ["merchantDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDateTime")]],
      ["merchantHomePageURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantHomePageURL")], [0, 1]],
      ["merchantRef", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantRef")], [0, 1]],
      ["notificationURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "NotificationURL")], [0, 1]],
      ["selectedFICode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "SelectedFICode")], [0, 1]],
      ["successfulURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "SuccessfulURL")], [0, 1]],
      ["timeout", ["SOAP::SOAPInt", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Timeout")]],
      ["unsuccessfulURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UnsuccessfulURL")], [0, 1]],
      ["userIPAddress", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UserIPAddress")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfError,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ArrayOfError"),
    :schema_element => [
      ["error", ["Error[]", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Error")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Error,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Error"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Code")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Field")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => InitiateTransactionOutput,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "InitiateTransactionOutput"),
    :schema_element => [
      ["navigateURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "NavigateURL")], [0, 1]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]],
      ["transactionToken", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionToken")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Transaction,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Transaction"),
    :schema_element => [
      ["amountPaid", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "AmountPaid")]],
      ["bankReceipt", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceipt")], [0, 1]],
      ["bankReceiptDateTime", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptDateTime")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CountryCode")], [0, 1]],
      ["countryName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CountryName")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["currencyName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyName")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EndDateTime")]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ErrorCode")], [0, 1]],
      ["errorMessage", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ErrorMessage")], [0, 1]],
      ["establishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EstablishedDateTime")]],
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionCountryCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCountryCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]],
      ["merchantAcctName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctName")], [0, 1]],
      ["merchantAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctNumber")], [0, 1]],
      ["merchantAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctSortCode")], [0, 1]],
      ["merchantAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctSuffix")], [0, 1]],
      ["merchantDefinedData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDefinedData")], [0, 1]],
      ["merchantEstablishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantEstablishedDateTime")]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantReference")], [0, 1]],
      ["paymentAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PaymentAmount")]],
      ["startDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "StartDateTime")]],
      ["transactionID", [nil, XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionID")]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TransactionPlusByTransactionRefNo,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionPlusByTransactionRefNo"),
    :schema_element => [
      ["amountPaid", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "AmountPaid")], [0, 1]],
      ["bankReceiptDateTime", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptDateTime")], [0, 1]],
      ["bankReceiptNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptNo")], [0, 1]],
      ["countryCode2", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CountryCode2")], [0, 1]],
      ["countryName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CountryName")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["currencyName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyName")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EndDateTime")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ErrorCode")], [0, 1]],
      ["errorMessage", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ErrorMessage")], [0, 1]],
      ["establishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EstablishedDateTime")], [0, 1]],
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionCountryCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCountryCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]],
      ["isExpired", ["SOAP::SOAPBoolean", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "IsExpired")], [0, 1]],
      ["isValidIP", ["SOAP::SOAPBoolean", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "IsValidIP")], [0, 1]],
      ["merchantAcctName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctName")], [0, 1]],
      ["merchantAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctNumber")], [0, 1]],
      ["merchantAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctSortCode")], [0, 1]],
      ["merchantAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctSuffix")], [0, 1]],
      ["merchantDefinedData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDefinedData")], [0, 1]],
      ["merchantEntityID", [nil, XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantEntityID")], [0, 1]],
      ["merchantEstablishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantEstablishedDateTime")], [0, 1]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantReference")], [0, 1]],
      ["pOLiVersionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "POLiVersionCode")], [0, 1]],
      ["pOLiVersionID", [nil, XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "POLiVersionID")], [0, 1]],
      ["payerAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctNumber")], [0, 1]],
      ["payerAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSortCode")], [0, 1]],
      ["payerAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSuffix")], [0, 1]],
      ["paymentAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PaymentAmount")], [0, 1]],
      ["startDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "StartDateTime")], [0, 1]],
      ["transactionID", [nil, XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionID")], [0, 1]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]],
      ["transactionStatus", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatus")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatusCode")], [0, 1]],
      ["userIPAddress", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UserIPAddress")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfFinancialInstitution,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ArrayOfFinancialInstitution"),
    :schema_element => [
      ["financialInstitution", ["FinancialInstitution[]", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitution")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => FinancialInstitution,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitution"),
    :schema_element => [
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDailyTransaction,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ArrayOfDailyTransaction"),
    :schema_element => [
      ["dailyTransaction", ["DailyTransaction[]", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "DailyTransaction")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DailyTransaction,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "DailyTransaction"),
    :schema_element => [
      ["amountPaid", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "AmountPaid")]],
      ["bankReceiptNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptNo")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["currencyName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyName")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EndDateTime")]],
      ["establishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EstablishedDateTime")]],
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCode")], [0, 1]],
      ["merchantCommonName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCommonName")], [0, 1]],
      ["merchantDefinedData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDefinedData")], [0, 1]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantReference")], [0, 1]],
      ["payerAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctNumber")], [0, 1]],
      ["payerAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSortCode")], [0, 1]],
      ["payerAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSuffix")], [0, 1]],
      ["paymentAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PaymentAmount")]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]],
      ["transactionStatus", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatus")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatusCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DetailedTransaction,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "DetailedTransaction"),
    :schema_element => [
      ["amountPaid", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "AmountPaid")]],
      ["bankReceiptNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptNo")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["currencyName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyName")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EndDateTime")]],
      ["establishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EstablishedDateTime")]],
      ["failureReason", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FailureReason")], [0, 1]],
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCode")], [0, 1]],
      ["merchantCommonName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCommonName")], [0, 1]],
      ["merchantDefinedData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDefinedData")], [0, 1]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantReference")], [0, 1]],
      ["payerAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctNumber")], [0, 1]],
      ["payerAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSortCode")], [0, 1]],
      ["payerAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSuffix")], [0, 1]],
      ["paymentAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PaymentAmount")]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]],
      ["transactionStatus", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatus")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatusCode")], [0, 1]],
      ["userIPAddress", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UserIPAddress")], [0, 1]],
      ["userPlatform", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UserPlatform")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfTransactionStepsList,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ArrayOfTransactionStepsList"),
    :schema_element => [
      ["transactionStepsList", ["TransactionStepsList[]", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStepsList")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => TransactionStepsList,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStepsList"),
    :schema_element => [
      ["createdDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CreatedDateTime")]],
      ["transactionStepTypeName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStepTypeName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MerchantApiFault,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantApiFault"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Description")], [0, 1]],
      ["errorCode", ["SOAP::SOAPInt", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ErrorCode")]],
      ["transactionStatus", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatus")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InitiateTransactionRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "InitiateTransactionRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["transaction", ["InitiateTransactionInput", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Transaction")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InitiateTransactionResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "InitiateTransactionResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "POLiBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]],
      ["transaction", ["InitiateTransactionOutput", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Transaction")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => POLiBaseResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "POLiBaseResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "BaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BaseResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "BaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTransactionRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetTransactionRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["transactionToken", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionToken")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTransactionResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetTransactionResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "POLiBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]],
      ["transaction", ["Transaction", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Transaction")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTransactionPlusRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetTransactionPlusRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["transactionToken", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionToken")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTransactionPlusResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetTransactionPlusResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "POLiBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]],
      ["transaction", ["TransactionPlusByTransactionRefNo", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Transaction")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetFinancialInstitutionsRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetFinancialInstitutionsRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetFinancialInstitutionsResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetFinancialInstitutionsResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "POLiBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]],
      ["financialInstitutionList", ["ArrayOfFinancialInstitution", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "FinancialInstitutionList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDailyTransactionsRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDailyTransactionsRequest"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["establishedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "EstablishedDate")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ReportBaseRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDailyTransactionsResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDailyTransactionsResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["dailyTransactionList", ["ArrayOfDailyTransaction", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "DailyTransactionList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ReportBaseResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "BaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDailyTransactionsCSVRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDailyTransactionsCSVRequest"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDailyTransactionsRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["establishedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "EstablishedDate")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDailyTransactionsCSVResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDailyTransactionsCSVResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["cSVData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "CSVData")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDetailedTransactionRequest,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDetailedTransactionRequest"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["includeSteps", ["SOAP::SOAPBoolean", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "IncludeSteps")]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantReference")], [0, 1]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionRefNo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDetailedTransactionResponse,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDetailedTransactionResponse"),
    :schema_basetype => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["detailedTransaction", ["DetailedTransaction", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "DetailedTransaction")], [0, 1]],
      ["transactionStepList", ["ArrayOfTransactionStepsList", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStepList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InitiateTransactionInput,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "InitiateTransactionInput"),
    :schema_element => [
      ["currencyAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyAmount")]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["merchantCheckoutURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCheckoutURL")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCode")], [0, 1]],
      ["merchantData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantData")], [0, 1]],
      ["merchantDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDateTime")]],
      ["merchantHomePageURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantHomePageURL")], [0, 1]],
      ["merchantRef", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantRef")], [0, 1]],
      ["notificationURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "NotificationURL")], [0, 1]],
      ["selectedFICode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "SelectedFICode")], [0, 1]],
      ["successfulURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "SuccessfulURL")], [0, 1]],
      ["timeout", ["SOAP::SOAPInt", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Timeout")]],
      ["unsuccessfulURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UnsuccessfulURL")], [0, 1]],
      ["userIPAddress", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UserIPAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfError,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ArrayOfError"),
    :schema_element => [
      ["error", ["Error[]", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Error")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Error,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Error"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Code")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Field")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InitiateTransactionOutput,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "InitiateTransactionOutput"),
    :schema_element => [
      ["navigateURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "NavigateURL")], [0, 1]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]],
      ["transactionToken", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionToken")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Transaction,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Transaction"),
    :schema_element => [
      ["amountPaid", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "AmountPaid")]],
      ["bankReceipt", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceipt")], [0, 1]],
      ["bankReceiptDateTime", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptDateTime")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CountryCode")], [0, 1]],
      ["countryName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CountryName")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["currencyName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyName")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EndDateTime")]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ErrorCode")], [0, 1]],
      ["errorMessage", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ErrorMessage")], [0, 1]],
      ["establishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EstablishedDateTime")]],
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionCountryCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCountryCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]],
      ["merchantAcctName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctName")], [0, 1]],
      ["merchantAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctNumber")], [0, 1]],
      ["merchantAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctSortCode")], [0, 1]],
      ["merchantAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctSuffix")], [0, 1]],
      ["merchantDefinedData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDefinedData")], [0, 1]],
      ["merchantEstablishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantEstablishedDateTime")]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantReference")], [0, 1]],
      ["paymentAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PaymentAmount")]],
      ["startDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "StartDateTime")]],
      ["transactionID", [nil, XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionID")]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TransactionPlusByTransactionRefNo,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionPlusByTransactionRefNo"),
    :schema_element => [
      ["amountPaid", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "AmountPaid")], [0, 1]],
      ["bankReceiptDateTime", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptDateTime")], [0, 1]],
      ["bankReceiptNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptNo")], [0, 1]],
      ["countryCode2", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CountryCode2")], [0, 1]],
      ["countryName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CountryName")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["currencyName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyName")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EndDateTime")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ErrorCode")], [0, 1]],
      ["errorMessage", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ErrorMessage")], [0, 1]],
      ["establishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EstablishedDateTime")], [0, 1]],
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionCountryCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCountryCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]],
      ["isExpired", ["SOAP::SOAPBoolean", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "IsExpired")], [0, 1]],
      ["isValidIP", ["SOAP::SOAPBoolean", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "IsValidIP")], [0, 1]],
      ["merchantAcctName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctName")], [0, 1]],
      ["merchantAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctNumber")], [0, 1]],
      ["merchantAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctSortCode")], [0, 1]],
      ["merchantAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctSuffix")], [0, 1]],
      ["merchantDefinedData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDefinedData")], [0, 1]],
      ["merchantEntityID", [nil, XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantEntityID")], [0, 1]],
      ["merchantEstablishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantEstablishedDateTime")], [0, 1]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantReference")], [0, 1]],
      ["pOLiVersionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "POLiVersionCode")], [0, 1]],
      ["pOLiVersionID", [nil, XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "POLiVersionID")], [0, 1]],
      ["payerAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctNumber")], [0, 1]],
      ["payerAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSortCode")], [0, 1]],
      ["payerAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSuffix")], [0, 1]],
      ["paymentAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PaymentAmount")], [0, 1]],
      ["startDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "StartDateTime")], [0, 1]],
      ["transactionID", [nil, XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionID")], [0, 1]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]],
      ["transactionStatus", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatus")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatusCode")], [0, 1]],
      ["userIPAddress", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UserIPAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfFinancialInstitution,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ArrayOfFinancialInstitution"),
    :schema_element => [
      ["financialInstitution", ["FinancialInstitution[]", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitution")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => FinancialInstitution,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitution"),
    :schema_element => [
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDailyTransaction,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ArrayOfDailyTransaction"),
    :schema_element => [
      ["dailyTransaction", ["DailyTransaction[]", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "DailyTransaction")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DailyTransaction,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "DailyTransaction"),
    :schema_element => [
      ["amountPaid", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "AmountPaid")]],
      ["bankReceiptNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptNo")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["currencyName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyName")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EndDateTime")]],
      ["establishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EstablishedDateTime")]],
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCode")], [0, 1]],
      ["merchantCommonName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCommonName")], [0, 1]],
      ["merchantDefinedData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDefinedData")], [0, 1]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantReference")], [0, 1]],
      ["payerAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctNumber")], [0, 1]],
      ["payerAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSortCode")], [0, 1]],
      ["payerAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSuffix")], [0, 1]],
      ["paymentAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PaymentAmount")]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]],
      ["transactionStatus", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatus")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatusCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DetailedTransaction,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "DetailedTransaction"),
    :schema_element => [
      ["amountPaid", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "AmountPaid")]],
      ["bankReceiptNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptNo")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["currencyName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyName")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EndDateTime")]],
      ["establishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EstablishedDateTime")]],
      ["failureReason", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FailureReason")], [0, 1]],
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCode")], [0, 1]],
      ["merchantCommonName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCommonName")], [0, 1]],
      ["merchantDefinedData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDefinedData")], [0, 1]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantReference")], [0, 1]],
      ["payerAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctNumber")], [0, 1]],
      ["payerAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSortCode")], [0, 1]],
      ["payerAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSuffix")], [0, 1]],
      ["paymentAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PaymentAmount")]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]],
      ["transactionStatus", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatus")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatusCode")], [0, 1]],
      ["userIPAddress", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UserIPAddress")], [0, 1]],
      ["userPlatform", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UserPlatform")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfTransactionStepsList,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ArrayOfTransactionStepsList"),
    :schema_element => [
      ["transactionStepsList", ["TransactionStepsList[]", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStepsList")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TransactionStepsList,
    :schema_type => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStepsList"),
    :schema_element => [
      ["createdDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CreatedDateTime")]],
      ["transactionStepTypeName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStepTypeName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Echo,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "Echo"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EchoResponse,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "EchoResponse"),
    :schema_element => [
      ["echoResult", ["SOAP::SOAPString", XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "EchoResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InitiateTransaction,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "InitiateTransaction"),
    :schema_element => [
      ["request", "InitiateTransactionRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InitiateTransactionResponse_,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "InitiateTransactionResponse"),
    :schema_element => [
      ["initiateTransactionResult", ["InitiateTransactionResponse", XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "InitiateTransactionResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTransaction,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetTransaction"),
    :schema_element => [
      ["request", "GetTransactionRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTransactionResponse_,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetTransactionResponse"),
    :schema_element => [
      ["getTransactionResult", ["GetTransactionResponse", XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetTransactionResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTransactionPlus,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetTransactionPlus"),
    :schema_element => [
      ["request", "GetTransactionPlusRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTransactionPlusResponse_,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetTransactionPlusResponse"),
    :schema_element => [
      ["getTransactionPlusResult", ["GetTransactionPlusResponse", XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetTransactionPlusResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetFinancialInstitutions,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetFinancialInstitutions"),
    :schema_element => [
      ["request", "GetFinancialInstitutionsRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetFinancialInstitutionsResponse_,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetFinancialInstitutionsResponse"),
    :schema_element => [
      ["getFinancialInstitutionsResult", ["GetFinancialInstitutionsResponse", XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetFinancialInstitutionsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDocumentation,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetDocumentation"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetDocumentationResponse,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetDocumentationResponse"),
    :schema_element => [
      ["getDocumentationResult", [nil, XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetDocumentationResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDailyTransactions,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetDailyTransactions"),
    :schema_element => [
      ["request", "GetDailyTransactionsRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDailyTransactionsResponse_,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetDailyTransactionsResponse"),
    :schema_element => [
      ["getDailyTransactionsResult", ["GetDailyTransactionsResponse", XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetDailyTransactionsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDailyTransactionsCSV,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetDailyTransactionsCSV"),
    :schema_element => [
      ["request", "GetDailyTransactionsCSVRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDailyTransactionsCSVResponse_,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetDailyTransactionsCSVResponse"),
    :schema_element => [
      ["getDailyTransactionsCSVResult", ["GetDailyTransactionsCSVResponse", XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetDailyTransactionsCSVResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDetailedTransaction,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetDetailedTransaction"),
    :schema_element => [
      ["request", "GetDetailedTransactionRequest", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDetailedTransactionResponse_,
    :schema_name => XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetDetailedTransactionResponse"),
    :schema_element => [
      ["getDetailedTransactionResult", ["GetDetailedTransactionResponse", XSD::QName.new(NsMerchantapiserviceServicesPoliCentricomCom, "GetDetailedTransactionResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MerchantApiFault,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantApiFault"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Description")], [0, 1]],
      ["errorCode", ["SOAP::SOAPInt", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ErrorCode")]],
      ["transactionStatus", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatus")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InitiateTransactionRequest,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "InitiateTransactionRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["transaction", ["InitiateTransactionInput", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Transaction")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InitiateTransactionResponse,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "InitiateTransactionResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]],
      ["transaction", ["InitiateTransactionOutput", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Transaction")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => POLiBaseResponse,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "POLiBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BaseResponse,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "BaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTransactionRequest,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetTransactionRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["transactionToken", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionToken")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTransactionResponse,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetTransactionResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]],
      ["transaction", ["Transaction", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Transaction")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTransactionPlusRequest,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetTransactionPlusRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["transactionToken", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionToken")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTransactionPlusResponse,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetTransactionPlusResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]],
      ["transaction", ["TransactionPlusByTransactionRefNo", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Transaction")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetFinancialInstitutionsRequest,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetFinancialInstitutionsRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetFinancialInstitutionsResponse,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetFinancialInstitutionsResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]],
      ["financialInstitutionList", ["ArrayOfFinancialInstitution", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "FinancialInstitutionList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDailyTransactionsRequest,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDailyTransactionsRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["establishedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "EstablishedDate")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ReportBaseRequest,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDailyTransactionsResponse,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDailyTransactionsResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["dailyTransactionList", ["ArrayOfDailyTransaction", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "DailyTransactionList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ReportBaseResponse,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "ReportBaseResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDailyTransactionsCSVRequest,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDailyTransactionsCSVRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["establishedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "EstablishedDate")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStatusCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDailyTransactionsCSVResponse,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDailyTransactionsCSVResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["cSVData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "CSVData")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDetailedTransactionRequest,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDetailedTransactionRequest"),
    :schema_element => [
      ["authenticationCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "AuthenticationCode")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantCode")], [0, 1]],
      ["includeSteps", ["SOAP::SOAPBoolean", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "IncludeSteps")]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "MerchantReference")], [0, 1]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionRefNo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDetailedTransactionResponse,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "GetDetailedTransactionResponse"),
    :schema_element => [
      ["errors", ["ArrayOfError", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "Errors")], [0, 1]],
      ["detailedTransaction", ["DetailedTransaction", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "DetailedTransaction")], [0, 1]],
      ["transactionStepList", ["ArrayOfTransactionStepsList", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIContracts, "TransactionStepList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InitiateTransactionInput,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "InitiateTransactionInput"),
    :schema_element => [
      ["currencyAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyAmount")]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["merchantCheckoutURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCheckoutURL")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCode")], [0, 1]],
      ["merchantData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantData")], [0, 1]],
      ["merchantDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDateTime")]],
      ["merchantHomePageURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantHomePageURL")], [0, 1]],
      ["merchantRef", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantRef")], [0, 1]],
      ["notificationURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "NotificationURL")], [0, 1]],
      ["selectedFICode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "SelectedFICode")], [0, 1]],
      ["successfulURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "SuccessfulURL")], [0, 1]],
      ["timeout", ["SOAP::SOAPInt", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Timeout")]],
      ["unsuccessfulURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UnsuccessfulURL")], [0, 1]],
      ["userIPAddress", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UserIPAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfError,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ArrayOfError"),
    :schema_element => [
      ["error", ["Error[]", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Error")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Error,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Error"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Code")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Field")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InitiateTransactionOutput,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "InitiateTransactionOutput"),
    :schema_element => [
      ["navigateURL", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "NavigateURL")], [0, 1]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]],
      ["transactionToken", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionToken")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Transaction,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "Transaction"),
    :schema_element => [
      ["amountPaid", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "AmountPaid")]],
      ["bankReceipt", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceipt")], [0, 1]],
      ["bankReceiptDateTime", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptDateTime")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CountryCode")], [0, 1]],
      ["countryName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CountryName")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["currencyName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyName")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EndDateTime")]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ErrorCode")], [0, 1]],
      ["errorMessage", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ErrorMessage")], [0, 1]],
      ["establishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EstablishedDateTime")]],
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionCountryCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCountryCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]],
      ["merchantAcctName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctName")], [0, 1]],
      ["merchantAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctNumber")], [0, 1]],
      ["merchantAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctSortCode")], [0, 1]],
      ["merchantAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctSuffix")], [0, 1]],
      ["merchantDefinedData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDefinedData")], [0, 1]],
      ["merchantEstablishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantEstablishedDateTime")]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantReference")], [0, 1]],
      ["paymentAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PaymentAmount")]],
      ["startDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "StartDateTime")]],
      ["transactionID", [nil, XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionID")]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TransactionPlusByTransactionRefNo,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionPlusByTransactionRefNo"),
    :schema_element => [
      ["amountPaid", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "AmountPaid")], [0, 1]],
      ["bankReceiptDateTime", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptDateTime")], [0, 1]],
      ["bankReceiptNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptNo")], [0, 1]],
      ["countryCode2", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CountryCode2")], [0, 1]],
      ["countryName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CountryName")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["currencyName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyName")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EndDateTime")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ErrorCode")], [0, 1]],
      ["errorMessage", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ErrorMessage")], [0, 1]],
      ["establishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EstablishedDateTime")], [0, 1]],
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionCountryCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCountryCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]],
      ["isExpired", ["SOAP::SOAPBoolean", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "IsExpired")], [0, 1]],
      ["isValidIP", ["SOAP::SOAPBoolean", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "IsValidIP")], [0, 1]],
      ["merchantAcctName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctName")], [0, 1]],
      ["merchantAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctNumber")], [0, 1]],
      ["merchantAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctSortCode")], [0, 1]],
      ["merchantAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantAcctSuffix")], [0, 1]],
      ["merchantDefinedData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDefinedData")], [0, 1]],
      ["merchantEntityID", [nil, XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantEntityID")], [0, 1]],
      ["merchantEstablishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantEstablishedDateTime")], [0, 1]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantReference")], [0, 1]],
      ["pOLiVersionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "POLiVersionCode")], [0, 1]],
      ["pOLiVersionID", [nil, XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "POLiVersionID")], [0, 1]],
      ["payerAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctNumber")], [0, 1]],
      ["payerAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSortCode")], [0, 1]],
      ["payerAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSuffix")], [0, 1]],
      ["paymentAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PaymentAmount")], [0, 1]],
      ["startDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "StartDateTime")], [0, 1]],
      ["transactionID", [nil, XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionID")], [0, 1]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]],
      ["transactionStatus", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatus")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatusCode")], [0, 1]],
      ["userIPAddress", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UserIPAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfFinancialInstitution,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ArrayOfFinancialInstitution"),
    :schema_element => [
      ["financialInstitution", ["FinancialInstitution[]", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitution")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => FinancialInstitution,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitution"),
    :schema_element => [
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDailyTransaction,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ArrayOfDailyTransaction"),
    :schema_element => [
      ["dailyTransaction", ["DailyTransaction[]", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "DailyTransaction")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DailyTransaction,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "DailyTransaction"),
    :schema_element => [
      ["amountPaid", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "AmountPaid")]],
      ["bankReceiptNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptNo")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["currencyName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyName")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EndDateTime")]],
      ["establishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EstablishedDateTime")]],
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCode")], [0, 1]],
      ["merchantCommonName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCommonName")], [0, 1]],
      ["merchantDefinedData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDefinedData")], [0, 1]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantReference")], [0, 1]],
      ["payerAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctNumber")], [0, 1]],
      ["payerAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSortCode")], [0, 1]],
      ["payerAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSuffix")], [0, 1]],
      ["paymentAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PaymentAmount")]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]],
      ["transactionStatus", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatus")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatusCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DetailedTransaction,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "DetailedTransaction"),
    :schema_element => [
      ["amountPaid", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "AmountPaid")]],
      ["bankReceiptNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "BankReceiptNo")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyCode")], [0, 1]],
      ["currencyName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CurrencyName")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EndDateTime")]],
      ["establishedDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "EstablishedDateTime")]],
      ["failureReason", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FailureReason")], [0, 1]],
      ["financialInstitutionCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionCode")], [0, 1]],
      ["financialInstitutionName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "FinancialInstitutionName")], [0, 1]],
      ["merchantCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCode")], [0, 1]],
      ["merchantCommonName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantCommonName")], [0, 1]],
      ["merchantDefinedData", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantDefinedData")], [0, 1]],
      ["merchantReference", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "MerchantReference")], [0, 1]],
      ["payerAcctNumber", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctNumber")], [0, 1]],
      ["payerAcctSortCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSortCode")], [0, 1]],
      ["payerAcctSuffix", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PayerAcctSuffix")], [0, 1]],
      ["paymentAmount", ["SOAP::SOAPDecimal", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "PaymentAmount")]],
      ["transactionRefNo", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionRefNo")], [0, 1]],
      ["transactionStatus", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatus")], [0, 1]],
      ["transactionStatusCode", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStatusCode")], [0, 1]],
      ["userIPAddress", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UserIPAddress")], [0, 1]],
      ["userPlatform", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "UserPlatform")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfTransactionStepsList,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "ArrayOfTransactionStepsList"),
    :schema_element => [
      ["transactionStepsList", ["TransactionStepsList[]", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStepsList")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TransactionStepsList,
    :schema_name => XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStepsList"),
    :schema_element => [
      ["createdDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "CreatedDateTime")]],
      ["transactionStepTypeName", ["SOAP::SOAPString", XSD::QName.new(NsCentricomPOLiServicesMerchantAPIDCO, "TransactionStepTypeName")], [0, 1]]
    ]
  )

end
