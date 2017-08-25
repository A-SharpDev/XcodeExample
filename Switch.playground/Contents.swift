//: Conditional Switch statements
import Cocoa

//switch aValue {
//case someValueToCompare:
//// Do something to respond
//case anotherValueToCompare:
//// Do something to respond
//default:
//    // Do something when there are no matches
//}

//var statusCode: Int = 404
//var errorString: String
//switch statusCode {
//case 400:
//    errorString = "Bad Request"
//case 401:
//    errorString = "Unauthorized"
//case 403:
//    errorString = "Forbidden"
//case 404:
//    errorString = "Not found"
//default:
//    errorString = "None"
//}
//print(errorString)

//Custom, multiple values
//var statusCode: Int = 404
//var errorString: String = "The request failed:"
//switch statusCode {
//case 400, 401, 403, 404:
//    errorString = "There was something wrong with the request. An error \(statusCode) was thrown."
//    fallthrough
//default:
//    errorString += " Please review the request and try again."
//}
//
//print(errorString)

//Ranges
//var statusCode: Int = 404
//var errorString = "The request failed with the error:"
//
//switch statusCode {
//case 100, 101:
//    errorString += " Informational, 1xx."
//case 204:
//    errorString += " Successful but no content, 204."
//case 300...307:
//    errorString += " Redirection, 3xx."
//case 400...417:
//    errorString += " Client error, 4xx."
//case 500...505:
//    errorString += " Server error, 5xx."
//default:
//    errorString = "Unknown. Please review the request and try again"
//}
//print(errorString)

//Custom Rnges
var statusCode: Int = 404
var errorString = "The request failed with the error:"

switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)"
case 204:
    errorString += " Successful but no content, \(statusCode)."
case 300...307:
    errorString += " Redirection, \(statusCode)."
case 400...417:
    errorString += " Client error, \(statusCode)."
case 500...505:
    errorString += " Server error, \(statusCode)."
case let unknownCode:
    errorString = "\(unknownCode) is not a known error code."
}
print(errorString)