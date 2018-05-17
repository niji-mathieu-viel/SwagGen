//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension Petstore.Pets {

    public enum ListPets {

        public static let service = APIService<Response>(id: "listPets", tag: "pets", method: "GET", path: "/pets", hasBody: false)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** How many items to return at one time (max 100) */
                public var limit: Int?

                public init(limit: Int? = nil) {
                    self.limit = limit
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: ListPets.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(limit: Int? = nil) {
                let options = Options(limit: limit)
                self.init(options: options)
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                if let limit = options.limit {
                  params["limit"] = limit
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [Pet]

            /** An array of pets */
            case status200([Pet])

            /** unexpected error */
            case defaultResponse(statusCode: Int, ErrorType)

            public var success: [Pet]? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: ErrorType? {
                switch self {
                case .defaultResponse(_, let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<[Pet], ErrorType> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .defaultResponse(_, let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data) throws {
                let decoder = JSONDecoder()
                switch statusCode {
                case 200: self = try .status200(decoder.decode([Pet].self, from: data))
                default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(ErrorType.self, from: data))
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
