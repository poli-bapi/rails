require 'xsd/qname'

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}MerchantApiFault
#   description - SOAP::SOAPString
#   errorCode - SOAP::SOAPInt
#   transactionStatus - SOAP::SOAPString
class MerchantApiFault
  attr_accessor :description
  attr_accessor :errorCode
  attr_accessor :transactionStatus

  def initialize(description = nil, errorCode = nil, transactionStatus = nil)
    @description = description
    @errorCode = errorCode
    @transactionStatus = transactionStatus
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}InitiateTransactionRequest
#   authenticationCode - SOAP::SOAPString
#   transaction - InitiateTransactionInput
class InitiateTransactionRequest
  attr_accessor :authenticationCode
  attr_accessor :transaction

  def initialize(authenticationCode = nil, transaction = nil)
    @authenticationCode = authenticationCode
    @transaction = transaction
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}BaseResponse
#   errors - ArrayOfError
class BaseResponse
  attr_accessor :errors

  def initialize(errors = nil)
    @errors = errors
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}POLiBaseResponse
#   errors - ArrayOfError
#   transactionStatusCode - SOAP::SOAPString
class POLiBaseResponse < BaseResponse
  attr_accessor :errors
  attr_accessor :transactionStatusCode

  def initialize(errors = nil, transactionStatusCode = nil)
    @errors = errors
    @transactionStatusCode = transactionStatusCode
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}InitiateTransactionResponse
#   errors - ArrayOfError
#   transactionStatusCode - SOAP::SOAPString
#   transaction - InitiateTransactionOutput
class InitiateTransactionResponse < POLiBaseResponse
  attr_accessor :errors
  attr_accessor :transactionStatusCode
  attr_accessor :transaction

  def initialize(errors = nil, transactionStatusCode = nil, transaction = nil)
    @errors = errors
    @transactionStatusCode = transactionStatusCode
    @transaction = transaction
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}GetTransactionResponse
#   errors - ArrayOfError
#   transactionStatusCode - SOAP::SOAPString
#   transaction - Transaction
class GetTransactionResponse < POLiBaseResponse
  attr_accessor :errors
  attr_accessor :transactionStatusCode
  attr_accessor :transaction

  def initialize(errors = nil, transactionStatusCode = nil, transaction = nil)
    @errors = errors
    @transactionStatusCode = transactionStatusCode
    @transaction = transaction
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}GetTransactionPlusResponse
#   errors - ArrayOfError
#   transactionStatusCode - SOAP::SOAPString
#   transaction - TransactionPlusByTransactionRefNo
class GetTransactionPlusResponse < POLiBaseResponse
  attr_accessor :errors
  attr_accessor :transactionStatusCode
  attr_accessor :transaction

  def initialize(errors = nil, transactionStatusCode = nil, transaction = nil)
    @errors = errors
    @transactionStatusCode = transactionStatusCode
    @transaction = transaction
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}GetFinancialInstitutionsResponse
#   errors - ArrayOfError
#   transactionStatusCode - SOAP::SOAPString
#   financialInstitutionList - ArrayOfFinancialInstitution
class GetFinancialInstitutionsResponse < POLiBaseResponse
  attr_accessor :errors
  attr_accessor :transactionStatusCode
  attr_accessor :financialInstitutionList

  def initialize(errors = nil, transactionStatusCode = nil, financialInstitutionList = nil)
    @errors = errors
    @transactionStatusCode = transactionStatusCode
    @financialInstitutionList = financialInstitutionList
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}ReportBaseResponse
#   errors - ArrayOfError
class ReportBaseResponse < BaseResponse
  attr_accessor :errors

  def initialize(errors = nil)
    @errors = errors
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}GetDailyTransactionsResponse
#   errors - ArrayOfError
#   dailyTransactionList - ArrayOfDailyTransaction
class GetDailyTransactionsResponse < ReportBaseResponse
  attr_accessor :errors
  attr_accessor :dailyTransactionList

  def initialize(errors = nil, dailyTransactionList = nil)
    @errors = errors
    @dailyTransactionList = dailyTransactionList
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}GetDailyTransactionsCSVResponse
#   errors - ArrayOfError
#   cSVData - SOAP::SOAPString
class GetDailyTransactionsCSVResponse < ReportBaseResponse
  attr_accessor :errors
  attr_accessor :cSVData

  def initialize(errors = nil, cSVData = nil)
    @errors = errors
    @cSVData = cSVData
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}GetDetailedTransactionResponse
#   errors - ArrayOfError
#   detailedTransaction - DetailedTransaction
#   transactionStepList - ArrayOfTransactionStepsList
class GetDetailedTransactionResponse < ReportBaseResponse
  attr_accessor :errors
  attr_accessor :detailedTransaction
  attr_accessor :transactionStepList

  def initialize(errors = nil, detailedTransaction = nil, transactionStepList = nil)
    @errors = errors
    @detailedTransaction = detailedTransaction
    @transactionStepList = transactionStepList
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}GetTransactionRequest
#   authenticationCode - SOAP::SOAPString
#   merchantCode - SOAP::SOAPString
#   transactionToken - SOAP::SOAPString
class GetTransactionRequest
  attr_accessor :authenticationCode
  attr_accessor :merchantCode
  attr_accessor :transactionToken

  def initialize(authenticationCode = nil, merchantCode = nil, transactionToken = nil)
    @authenticationCode = authenticationCode
    @merchantCode = merchantCode
    @transactionToken = transactionToken
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}GetTransactionPlusRequest
#   authenticationCode - SOAP::SOAPString
#   merchantCode - SOAP::SOAPString
#   transactionToken - SOAP::SOAPString
class GetTransactionPlusRequest
  attr_accessor :authenticationCode
  attr_accessor :merchantCode
  attr_accessor :transactionToken

  def initialize(authenticationCode = nil, merchantCode = nil, transactionToken = nil)
    @authenticationCode = authenticationCode
    @merchantCode = merchantCode
    @transactionToken = transactionToken
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}GetFinancialInstitutionsRequest
#   authenticationCode - SOAP::SOAPString
#   merchantCode - SOAP::SOAPString
class GetFinancialInstitutionsRequest
  attr_accessor :authenticationCode
  attr_accessor :merchantCode

  def initialize(authenticationCode = nil, merchantCode = nil)
    @authenticationCode = authenticationCode
    @merchantCode = merchantCode
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}ReportBaseRequest
#   authenticationCode - SOAP::SOAPString
#   merchantCode - SOAP::SOAPString
class ReportBaseRequest
  attr_accessor :authenticationCode
  attr_accessor :merchantCode

  def initialize(authenticationCode = nil, merchantCode = nil)
    @authenticationCode = authenticationCode
    @merchantCode = merchantCode
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}GetDailyTransactionsRequest
#   authenticationCode - SOAP::SOAPString
#   merchantCode - SOAP::SOAPString
#   establishedDate - SOAP::SOAPDateTime
#   transactionStatusCode - SOAP::SOAPString
class GetDailyTransactionsRequest < ReportBaseRequest
  attr_accessor :authenticationCode
  attr_accessor :merchantCode
  attr_accessor :establishedDate
  attr_accessor :transactionStatusCode

  def initialize(authenticationCode = nil, merchantCode = nil, establishedDate = nil, transactionStatusCode = nil)
    @authenticationCode = authenticationCode
    @merchantCode = merchantCode
    @establishedDate = establishedDate
    @transactionStatusCode = transactionStatusCode
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}GetDailyTransactionsCSVRequest
#   authenticationCode - SOAP::SOAPString
#   merchantCode - SOAP::SOAPString
#   establishedDate - SOAP::SOAPDateTime
#   transactionStatusCode - SOAP::SOAPString
class GetDailyTransactionsCSVRequest < GetDailyTransactionsRequest
  attr_accessor :authenticationCode
  attr_accessor :merchantCode
  attr_accessor :establishedDate
  attr_accessor :transactionStatusCode

  def initialize(authenticationCode = nil, merchantCode = nil, establishedDate = nil, transactionStatusCode = nil)
    @authenticationCode = authenticationCode
    @merchantCode = merchantCode
    @establishedDate = establishedDate
    @transactionStatusCode = transactionStatusCode
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.Contracts}GetDetailedTransactionRequest
#   authenticationCode - SOAP::SOAPString
#   merchantCode - SOAP::SOAPString
#   includeSteps - SOAP::SOAPBoolean
#   merchantReference - SOAP::SOAPString
#   transactionRefNo - SOAP::SOAPString
class GetDetailedTransactionRequest < ReportBaseRequest
  attr_accessor :authenticationCode
  attr_accessor :merchantCode
  attr_accessor :includeSteps
  attr_accessor :merchantReference
  attr_accessor :transactionRefNo

  def initialize(authenticationCode = nil, merchantCode = nil, includeSteps = nil, merchantReference = nil, transactionRefNo = nil)
    @authenticationCode = authenticationCode
    @merchantCode = merchantCode
    @includeSteps = includeSteps
    @merchantReference = merchantReference
    @transactionRefNo = transactionRefNo
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO}InitiateTransactionInput
#   currencyAmount - SOAP::SOAPDecimal
#   currencyCode - SOAP::SOAPString
#   merchantCheckoutURL - SOAP::SOAPString
#   merchantCode - SOAP::SOAPString
#   merchantData - SOAP::SOAPString
#   merchantDateTime - SOAP::SOAPDateTime
#   merchantHomePageURL - SOAP::SOAPString
#   merchantRef - SOAP::SOAPString
#   notificationURL - SOAP::SOAPString
#   selectedFICode - SOAP::SOAPString
#   successfulURL - SOAP::SOAPString
#   timeout - SOAP::SOAPInt
#   unsuccessfulURL - SOAP::SOAPString
#   userIPAddress - SOAP::SOAPString
class InitiateTransactionInput
  attr_accessor :currencyAmount
  attr_accessor :currencyCode
  attr_accessor :merchantCheckoutURL
  attr_accessor :merchantCode
  attr_accessor :merchantData
  attr_accessor :merchantDateTime
  attr_accessor :merchantHomePageURL
  attr_accessor :merchantRef
  attr_accessor :notificationURL
  attr_accessor :selectedFICode
  attr_accessor :successfulURL
  attr_accessor :timeout
  attr_accessor :unsuccessfulURL
  attr_accessor :userIPAddress

  def initialize(currencyAmount = nil, currencyCode = nil, merchantCheckoutURL = nil, merchantCode = nil, merchantData = nil, merchantDateTime = nil, merchantHomePageURL = nil, merchantRef = nil, notificationURL = nil, selectedFICode = nil, successfulURL = nil, timeout = nil, unsuccessfulURL = nil, userIPAddress = nil)
    @currencyAmount = currencyAmount
    @currencyCode = currencyCode
    @merchantCheckoutURL = merchantCheckoutURL
    @merchantCode = merchantCode
    @merchantData = merchantData
    @merchantDateTime = merchantDateTime
    @merchantHomePageURL = merchantHomePageURL
    @merchantRef = merchantRef
    @notificationURL = notificationURL
    @selectedFICode = selectedFICode
    @successfulURL = successfulURL
    @timeout = timeout
    @unsuccessfulURL = unsuccessfulURL
    @userIPAddress = userIPAddress
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO}ArrayOfError
class ArrayOfError < ::Array
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO}Error
#   code - SOAP::SOAPString
#   field - SOAP::SOAPString
#   message - SOAP::SOAPString
class Error
  attr_accessor :code
  attr_accessor :field
  attr_accessor :message

  def initialize(code = nil, field = nil, message = nil)
    @code = code
    @field = field
    @message = message
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO}InitiateTransactionOutput
#   navigateURL - SOAP::SOAPString
#   transactionRefNo - SOAP::SOAPString
#   transactionToken - SOAP::SOAPString
class InitiateTransactionOutput
  attr_accessor :navigateURL
  attr_accessor :transactionRefNo
  attr_accessor :transactionToken

  def initialize(navigateURL = nil, transactionRefNo = nil, transactionToken = nil)
    @navigateURL = navigateURL
    @transactionRefNo = transactionRefNo
    @transactionToken = transactionToken
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO}Transaction
#   amountPaid - SOAP::SOAPDecimal
#   bankReceipt - SOAP::SOAPString
#   bankReceiptDateTime - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   countryName - SOAP::SOAPString
#   currencyCode - SOAP::SOAPString
#   currencyName - SOAP::SOAPString
#   endDateTime - SOAP::SOAPDateTime
#   errorCode - SOAP::SOAPString
#   errorMessage - SOAP::SOAPString
#   establishedDateTime - SOAP::SOAPDateTime
#   financialInstitutionCode - SOAP::SOAPString
#   financialInstitutionCountryCode - SOAP::SOAPString
#   financialInstitutionName - SOAP::SOAPString
#   merchantAcctName - SOAP::SOAPString
#   merchantAcctNumber - SOAP::SOAPString
#   merchantAcctSortCode - SOAP::SOAPString
#   merchantAcctSuffix - SOAP::SOAPString
#   merchantDefinedData - SOAP::SOAPString
#   merchantEstablishedDateTime - SOAP::SOAPDateTime
#   merchantReference - SOAP::SOAPString
#   paymentAmount - SOAP::SOAPDecimal
#   startDateTime - SOAP::SOAPDateTime
#   transactionID - (any)
#   transactionRefNo - SOAP::SOAPString
class Transaction
  attr_accessor :amountPaid
  attr_accessor :bankReceipt
  attr_accessor :bankReceiptDateTime
  attr_accessor :countryCode
  attr_accessor :countryName
  attr_accessor :currencyCode
  attr_accessor :currencyName
  attr_accessor :endDateTime
  attr_accessor :errorCode
  attr_accessor :errorMessage
  attr_accessor :establishedDateTime
  attr_accessor :financialInstitutionCode
  attr_accessor :financialInstitutionCountryCode
  attr_accessor :financialInstitutionName
  attr_accessor :merchantAcctName
  attr_accessor :merchantAcctNumber
  attr_accessor :merchantAcctSortCode
  attr_accessor :merchantAcctSuffix
  attr_accessor :merchantDefinedData
  attr_accessor :merchantEstablishedDateTime
  attr_accessor :merchantReference
  attr_accessor :paymentAmount
  attr_accessor :startDateTime
  attr_accessor :transactionID
  attr_accessor :transactionRefNo

  def initialize(amountPaid = nil, bankReceipt = nil, bankReceiptDateTime = nil, countryCode = nil, countryName = nil, currencyCode = nil, currencyName = nil, endDateTime = nil, errorCode = nil, errorMessage = nil, establishedDateTime = nil, financialInstitutionCode = nil, financialInstitutionCountryCode = nil, financialInstitutionName = nil, merchantAcctName = nil, merchantAcctNumber = nil, merchantAcctSortCode = nil, merchantAcctSuffix = nil, merchantDefinedData = nil, merchantEstablishedDateTime = nil, merchantReference = nil, paymentAmount = nil, startDateTime = nil, transactionID = nil, transactionRefNo = nil)
    @amountPaid = amountPaid
    @bankReceipt = bankReceipt
    @bankReceiptDateTime = bankReceiptDateTime
    @countryCode = countryCode
    @countryName = countryName
    @currencyCode = currencyCode
    @currencyName = currencyName
    @endDateTime = endDateTime
    @errorCode = errorCode
    @errorMessage = errorMessage
    @establishedDateTime = establishedDateTime
    @financialInstitutionCode = financialInstitutionCode
    @financialInstitutionCountryCode = financialInstitutionCountryCode
    @financialInstitutionName = financialInstitutionName
    @merchantAcctName = merchantAcctName
    @merchantAcctNumber = merchantAcctNumber
    @merchantAcctSortCode = merchantAcctSortCode
    @merchantAcctSuffix = merchantAcctSuffix
    @merchantDefinedData = merchantDefinedData
    @merchantEstablishedDateTime = merchantEstablishedDateTime
    @merchantReference = merchantReference
    @paymentAmount = paymentAmount
    @startDateTime = startDateTime
    @transactionID = transactionID
    @transactionRefNo = transactionRefNo
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO}TransactionPlusByTransactionRefNo
#   amountPaid - SOAP::SOAPDecimal
#   bankReceiptDateTime - SOAP::SOAPString
#   bankReceiptNo - SOAP::SOAPString
#   countryCode2 - SOAP::SOAPString
#   countryName - SOAP::SOAPString
#   currencyCode - SOAP::SOAPString
#   currencyName - SOAP::SOAPString
#   endDateTime - SOAP::SOAPDateTime
#   errorCode - SOAP::SOAPString
#   errorMessage - SOAP::SOAPString
#   establishedDateTime - SOAP::SOAPDateTime
#   financialInstitutionCode - SOAP::SOAPString
#   financialInstitutionCountryCode - SOAP::SOAPString
#   financialInstitutionName - SOAP::SOAPString
#   isExpired - SOAP::SOAPBoolean
#   isValidIP - SOAP::SOAPBoolean
#   merchantAcctName - SOAP::SOAPString
#   merchantAcctNumber - SOAP::SOAPString
#   merchantAcctSortCode - SOAP::SOAPString
#   merchantAcctSuffix - SOAP::SOAPString
#   merchantDefinedData - SOAP::SOAPString
#   merchantEntityID - (any)
#   merchantEstablishedDateTime - SOAP::SOAPDateTime
#   merchantReference - SOAP::SOAPString
#   pOLiVersionCode - SOAP::SOAPString
#   pOLiVersionID - (any)
#   payerAcctNumber - SOAP::SOAPString
#   payerAcctSortCode - SOAP::SOAPString
#   payerAcctSuffix - SOAP::SOAPString
#   paymentAmount - SOAP::SOAPDecimal
#   startDateTime - SOAP::SOAPDateTime
#   transactionID - (any)
#   transactionRefNo - SOAP::SOAPString
#   transactionStatus - SOAP::SOAPString
#   transactionStatusCode - SOAP::SOAPString
#   userIPAddress - SOAP::SOAPString
class TransactionPlusByTransactionRefNo
  attr_accessor :amountPaid
  attr_accessor :bankReceiptDateTime
  attr_accessor :bankReceiptNo
  attr_accessor :countryCode2
  attr_accessor :countryName
  attr_accessor :currencyCode
  attr_accessor :currencyName
  attr_accessor :endDateTime
  attr_accessor :errorCode
  attr_accessor :errorMessage
  attr_accessor :establishedDateTime
  attr_accessor :financialInstitutionCode
  attr_accessor :financialInstitutionCountryCode
  attr_accessor :financialInstitutionName
  attr_accessor :isExpired
  attr_accessor :isValidIP
  attr_accessor :merchantAcctName
  attr_accessor :merchantAcctNumber
  attr_accessor :merchantAcctSortCode
  attr_accessor :merchantAcctSuffix
  attr_accessor :merchantDefinedData
  attr_accessor :merchantEntityID
  attr_accessor :merchantEstablishedDateTime
  attr_accessor :merchantReference
  attr_accessor :pOLiVersionCode
  attr_accessor :pOLiVersionID
  attr_accessor :payerAcctNumber
  attr_accessor :payerAcctSortCode
  attr_accessor :payerAcctSuffix
  attr_accessor :paymentAmount
  attr_accessor :startDateTime
  attr_accessor :transactionID
  attr_accessor :transactionRefNo
  attr_accessor :transactionStatus
  attr_accessor :transactionStatusCode
  attr_accessor :userIPAddress

  def initialize(amountPaid = nil, bankReceiptDateTime = nil, bankReceiptNo = nil, countryCode2 = nil, countryName = nil, currencyCode = nil, currencyName = nil, endDateTime = nil, errorCode = nil, errorMessage = nil, establishedDateTime = nil, financialInstitutionCode = nil, financialInstitutionCountryCode = nil, financialInstitutionName = nil, isExpired = nil, isValidIP = nil, merchantAcctName = nil, merchantAcctNumber = nil, merchantAcctSortCode = nil, merchantAcctSuffix = nil, merchantDefinedData = nil, merchantEntityID = nil, merchantEstablishedDateTime = nil, merchantReference = nil, pOLiVersionCode = nil, pOLiVersionID = nil, payerAcctNumber = nil, payerAcctSortCode = nil, payerAcctSuffix = nil, paymentAmount = nil, startDateTime = nil, transactionID = nil, transactionRefNo = nil, transactionStatus = nil, transactionStatusCode = nil, userIPAddress = nil)
    @amountPaid = amountPaid
    @bankReceiptDateTime = bankReceiptDateTime
    @bankReceiptNo = bankReceiptNo
    @countryCode2 = countryCode2
    @countryName = countryName
    @currencyCode = currencyCode
    @currencyName = currencyName
    @endDateTime = endDateTime
    @errorCode = errorCode
    @errorMessage = errorMessage
    @establishedDateTime = establishedDateTime
    @financialInstitutionCode = financialInstitutionCode
    @financialInstitutionCountryCode = financialInstitutionCountryCode
    @financialInstitutionName = financialInstitutionName
    @isExpired = isExpired
    @isValidIP = isValidIP
    @merchantAcctName = merchantAcctName
    @merchantAcctNumber = merchantAcctNumber
    @merchantAcctSortCode = merchantAcctSortCode
    @merchantAcctSuffix = merchantAcctSuffix
    @merchantDefinedData = merchantDefinedData
    @merchantEntityID = merchantEntityID
    @merchantEstablishedDateTime = merchantEstablishedDateTime
    @merchantReference = merchantReference
    @pOLiVersionCode = pOLiVersionCode
    @pOLiVersionID = pOLiVersionID
    @payerAcctNumber = payerAcctNumber
    @payerAcctSortCode = payerAcctSortCode
    @payerAcctSuffix = payerAcctSuffix
    @paymentAmount = paymentAmount
    @startDateTime = startDateTime
    @transactionID = transactionID
    @transactionRefNo = transactionRefNo
    @transactionStatus = transactionStatus
    @transactionStatusCode = transactionStatusCode
    @userIPAddress = userIPAddress
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO}ArrayOfFinancialInstitution
class ArrayOfFinancialInstitution < ::Array
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO}FinancialInstitution
#   financialInstitutionCode - SOAP::SOAPString
#   financialInstitutionName - SOAP::SOAPString
class FinancialInstitution
  attr_accessor :financialInstitutionCode
  attr_accessor :financialInstitutionName

  def initialize(financialInstitutionCode = nil, financialInstitutionName = nil)
    @financialInstitutionCode = financialInstitutionCode
    @financialInstitutionName = financialInstitutionName
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO}ArrayOfDailyTransaction
class ArrayOfDailyTransaction < ::Array
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO}DailyTransaction
#   amountPaid - SOAP::SOAPDecimal
#   bankReceiptNo - SOAP::SOAPString
#   currencyCode - SOAP::SOAPString
#   currencyName - SOAP::SOAPString
#   endDateTime - SOAP::SOAPDateTime
#   establishedDateTime - SOAP::SOAPDateTime
#   financialInstitutionCode - SOAP::SOAPString
#   financialInstitutionName - SOAP::SOAPString
#   merchantCode - SOAP::SOAPString
#   merchantCommonName - SOAP::SOAPString
#   merchantDefinedData - SOAP::SOAPString
#   merchantReference - SOAP::SOAPString
#   payerAcctNumber - SOAP::SOAPString
#   payerAcctSortCode - SOAP::SOAPString
#   payerAcctSuffix - SOAP::SOAPString
#   paymentAmount - SOAP::SOAPDecimal
#   transactionRefNo - SOAP::SOAPString
#   transactionStatus - SOAP::SOAPString
#   transactionStatusCode - SOAP::SOAPString
class DailyTransaction
  attr_accessor :amountPaid
  attr_accessor :bankReceiptNo
  attr_accessor :currencyCode
  attr_accessor :currencyName
  attr_accessor :endDateTime
  attr_accessor :establishedDateTime
  attr_accessor :financialInstitutionCode
  attr_accessor :financialInstitutionName
  attr_accessor :merchantCode
  attr_accessor :merchantCommonName
  attr_accessor :merchantDefinedData
  attr_accessor :merchantReference
  attr_accessor :payerAcctNumber
  attr_accessor :payerAcctSortCode
  attr_accessor :payerAcctSuffix
  attr_accessor :paymentAmount
  attr_accessor :transactionRefNo
  attr_accessor :transactionStatus
  attr_accessor :transactionStatusCode

  def initialize(amountPaid = nil, bankReceiptNo = nil, currencyCode = nil, currencyName = nil, endDateTime = nil, establishedDateTime = nil, financialInstitutionCode = nil, financialInstitutionName = nil, merchantCode = nil, merchantCommonName = nil, merchantDefinedData = nil, merchantReference = nil, payerAcctNumber = nil, payerAcctSortCode = nil, payerAcctSuffix = nil, paymentAmount = nil, transactionRefNo = nil, transactionStatus = nil, transactionStatusCode = nil)
    @amountPaid = amountPaid
    @bankReceiptNo = bankReceiptNo
    @currencyCode = currencyCode
    @currencyName = currencyName
    @endDateTime = endDateTime
    @establishedDateTime = establishedDateTime
    @financialInstitutionCode = financialInstitutionCode
    @financialInstitutionName = financialInstitutionName
    @merchantCode = merchantCode
    @merchantCommonName = merchantCommonName
    @merchantDefinedData = merchantDefinedData
    @merchantReference = merchantReference
    @payerAcctNumber = payerAcctNumber
    @payerAcctSortCode = payerAcctSortCode
    @payerAcctSuffix = payerAcctSuffix
    @paymentAmount = paymentAmount
    @transactionRefNo = transactionRefNo
    @transactionStatus = transactionStatus
    @transactionStatusCode = transactionStatusCode
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO}DetailedTransaction
#   amountPaid - SOAP::SOAPDecimal
#   bankReceiptNo - SOAP::SOAPString
#   currencyCode - SOAP::SOAPString
#   currencyName - SOAP::SOAPString
#   endDateTime - SOAP::SOAPDateTime
#   establishedDateTime - SOAP::SOAPDateTime
#   failureReason - SOAP::SOAPString
#   financialInstitutionCode - SOAP::SOAPString
#   financialInstitutionName - SOAP::SOAPString
#   merchantCode - SOAP::SOAPString
#   merchantCommonName - SOAP::SOAPString
#   merchantDefinedData - SOAP::SOAPString
#   merchantReference - SOAP::SOAPString
#   payerAcctNumber - SOAP::SOAPString
#   payerAcctSortCode - SOAP::SOAPString
#   payerAcctSuffix - SOAP::SOAPString
#   paymentAmount - SOAP::SOAPDecimal
#   transactionRefNo - SOAP::SOAPString
#   transactionStatus - SOAP::SOAPString
#   transactionStatusCode - SOAP::SOAPString
#   userIPAddress - SOAP::SOAPString
#   userPlatform - SOAP::SOAPString
class DetailedTransaction
  attr_accessor :amountPaid
  attr_accessor :bankReceiptNo
  attr_accessor :currencyCode
  attr_accessor :currencyName
  attr_accessor :endDateTime
  attr_accessor :establishedDateTime
  attr_accessor :failureReason
  attr_accessor :financialInstitutionCode
  attr_accessor :financialInstitutionName
  attr_accessor :merchantCode
  attr_accessor :merchantCommonName
  attr_accessor :merchantDefinedData
  attr_accessor :merchantReference
  attr_accessor :payerAcctNumber
  attr_accessor :payerAcctSortCode
  attr_accessor :payerAcctSuffix
  attr_accessor :paymentAmount
  attr_accessor :transactionRefNo
  attr_accessor :transactionStatus
  attr_accessor :transactionStatusCode
  attr_accessor :userIPAddress
  attr_accessor :userPlatform

  def initialize(amountPaid = nil, bankReceiptNo = nil, currencyCode = nil, currencyName = nil, endDateTime = nil, establishedDateTime = nil, failureReason = nil, financialInstitutionCode = nil, financialInstitutionName = nil, merchantCode = nil, merchantCommonName = nil, merchantDefinedData = nil, merchantReference = nil, payerAcctNumber = nil, payerAcctSortCode = nil, payerAcctSuffix = nil, paymentAmount = nil, transactionRefNo = nil, transactionStatus = nil, transactionStatusCode = nil, userIPAddress = nil, userPlatform = nil)
    @amountPaid = amountPaid
    @bankReceiptNo = bankReceiptNo
    @currencyCode = currencyCode
    @currencyName = currencyName
    @endDateTime = endDateTime
    @establishedDateTime = establishedDateTime
    @failureReason = failureReason
    @financialInstitutionCode = financialInstitutionCode
    @financialInstitutionName = financialInstitutionName
    @merchantCode = merchantCode
    @merchantCommonName = merchantCommonName
    @merchantDefinedData = merchantDefinedData
    @merchantReference = merchantReference
    @payerAcctNumber = payerAcctNumber
    @payerAcctSortCode = payerAcctSortCode
    @payerAcctSuffix = payerAcctSuffix
    @paymentAmount = paymentAmount
    @transactionRefNo = transactionRefNo
    @transactionStatus = transactionStatus
    @transactionStatusCode = transactionStatusCode
    @userIPAddress = userIPAddress
    @userPlatform = userPlatform
  end
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO}ArrayOfTransactionStepsList
class ArrayOfTransactionStepsList < ::Array
end

# {http://schemas.datacontract.org/2004/07/Centricom.POLi.Services.MerchantAPI.DCO}TransactionStepsList
#   createdDateTime - SOAP::SOAPDateTime
#   transactionStepTypeName - SOAP::SOAPString
class TransactionStepsList
  attr_accessor :createdDateTime
  attr_accessor :transactionStepTypeName

  def initialize(createdDateTime = nil, transactionStepTypeName = nil)
    @createdDateTime = createdDateTime
    @transactionStepTypeName = transactionStepTypeName
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}Echo
#   message - SOAP::SOAPString
class Echo
  attr_accessor :message

  def initialize(message = nil)
    @message = message
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}EchoResponse
#   echoResult - SOAP::SOAPString
class EchoResponse
  attr_accessor :echoResult

  def initialize(echoResult = nil)
    @echoResult = echoResult
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}InitiateTransaction
#   request - InitiateTransactionRequest
class InitiateTransaction
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}InitiateTransactionResponse
#   initiateTransactionResult - InitiateTransactionResponse
class InitiateTransactionResponse_
  attr_accessor :initiateTransactionResult

  def initialize(initiateTransactionResult = nil)
    @initiateTransactionResult = initiateTransactionResult
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}GetTransaction
#   request - GetTransactionRequest
class GetTransaction
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}GetTransactionResponse
#   getTransactionResult - GetTransactionResponse
class GetTransactionResponse_
  attr_accessor :getTransactionResult

  def initialize(getTransactionResult = nil)
    @getTransactionResult = getTransactionResult
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}GetTransactionPlus
#   request - GetTransactionPlusRequest
class GetTransactionPlus
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}GetTransactionPlusResponse
#   getTransactionPlusResult - GetTransactionPlusResponse
class GetTransactionPlusResponse_
  attr_accessor :getTransactionPlusResult

  def initialize(getTransactionPlusResult = nil)
    @getTransactionPlusResult = getTransactionPlusResult
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}GetFinancialInstitutions
#   request - GetFinancialInstitutionsRequest
class GetFinancialInstitutions
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}GetFinancialInstitutionsResponse
#   getFinancialInstitutionsResult - GetFinancialInstitutionsResponse
class GetFinancialInstitutionsResponse_
  attr_accessor :getFinancialInstitutionsResult

  def initialize(getFinancialInstitutionsResult = nil)
    @getFinancialInstitutionsResult = getFinancialInstitutionsResult
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}GetDocumentation
class GetDocumentation
  def initialize
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}GetDocumentationResponse
#   getDocumentationResult - (any)
class GetDocumentationResponse
  attr_accessor :getDocumentationResult

  def initialize(getDocumentationResult = nil)
    @getDocumentationResult = getDocumentationResult
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}GetDailyTransactions
#   request - GetDailyTransactionsRequest
class GetDailyTransactions
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}GetDailyTransactionsResponse
#   getDailyTransactionsResult - GetDailyTransactionsResponse
class GetDailyTransactionsResponse_
  attr_accessor :getDailyTransactionsResult

  def initialize(getDailyTransactionsResult = nil)
    @getDailyTransactionsResult = getDailyTransactionsResult
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}GetDailyTransactionsCSV
#   request - GetDailyTransactionsCSVRequest
class GetDailyTransactionsCSV
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}GetDailyTransactionsCSVResponse
#   getDailyTransactionsCSVResult - GetDailyTransactionsCSVResponse
class GetDailyTransactionsCSVResponse_
  attr_accessor :getDailyTransactionsCSVResult

  def initialize(getDailyTransactionsCSVResult = nil)
    @getDailyTransactionsCSVResult = getDailyTransactionsCSVResult
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}GetDetailedTransaction
#   request - GetDetailedTransactionRequest
class GetDetailedTransaction
  attr_accessor :request

  def initialize(request = nil)
    @request = request
  end
end

# {http://merchantapiservice.services.poli.centricom.com/}GetDetailedTransactionResponse
#   getDetailedTransactionResult - GetDetailedTransactionResponse
class GetDetailedTransactionResponse_
  attr_accessor :getDetailedTransactionResult

  def initialize(getDetailedTransactionResult = nil)
    @getDetailedTransactionResult = getDetailedTransactionResult
  end
end
