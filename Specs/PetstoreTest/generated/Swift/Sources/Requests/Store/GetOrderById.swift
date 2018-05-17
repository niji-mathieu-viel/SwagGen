//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension PetstoreTest.Store {

    /** For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions */
    public enum GetOrderById {

        public static let service = APIService<Response>(id: "getOrderById", tag: "store", method: "GET", path: "/store/order/{order_id}", hasBody: false)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** ID of pet that needs to be fetched */
                public var orderId: Int

                public init(orderId: Int) {
                    self.orderId = orderId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetOrderById.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(orderId: Int) {
                let options = Options(orderId: orderId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "orderId" + "}", with: "\(self.options.orderId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Order

            /** successful operation */
            case status200(Order)

            /** Invalid ID supplied */
            case status400

            /** Order not found */
            case status404

            public var success: Order? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data) throws {
                let decoder = JSONDecoder()
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Order.self, from: data))
                case 400: self = .status400
                case 404: self = .status404
                default: throw APIError.unexpectedStatusCode(statusCode: statusCode, data: data)
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
