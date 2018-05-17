//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class SearchCriteria: Codable, Equatable {

    public enum DateTimeType: String, Codable {
        case arriving = "Arriving"
        case departing = "Departing"

        public static let cases: [DateTimeType] = [
          .arriving,
          .departing,
        ]
    }

    public var dateTime: DateTime?

    public var dateTimeType: DateTimeType?

    public var timeAdjustments: TimeAdjustments?

    public init(dateTime: DateTime? = nil, dateTimeType: DateTimeType? = nil, timeAdjustments: TimeAdjustments? = nil) {
        self.dateTime = dateTime
        self.dateTimeType = dateTimeType
        self.timeAdjustments = timeAdjustments
    }

    private enum CodingKeys: String, CodingKey {
        case dateTime
        case dateTimeType
        case timeAdjustments
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        dateTime = try container.decodeIfPresent(.dateTime)
        dateTimeType = try container.decodeIfPresent(.dateTimeType)
        timeAdjustments = try container.decodeIfPresent(.timeAdjustments)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(dateTime, forKey: .dateTime)
        try container.encodeIfPresent(dateTimeType, forKey: .dateTimeType)
        try container.encodeIfPresent(timeAdjustments, forKey: .timeAdjustments)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? SearchCriteria else { return false }
      guard self.dateTime == object.dateTime else { return false }
      guard self.dateTimeType == object.dateTimeType else { return false }
      guard self.timeAdjustments == object.timeAdjustments else { return false }
      return true
    }

    public static func == (lhs: SearchCriteria, rhs: SearchCriteria) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
