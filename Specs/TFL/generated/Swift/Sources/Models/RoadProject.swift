//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class RoadProject: Codable, Equatable {

    public enum Phase: String, Codable {
        case unscoped = "Unscoped"
        case concept = "Concept"
        case consultationEnded = "ConsultationEnded"
        case consultation = "Consultation"
        case construction = "Construction"
        case complete = "Complete"

        public static let cases: [Phase] = [
          .unscoped,
          .concept,
          .consultationEnded,
          .consultation,
          .construction,
          .complete,
        ]
    }

    public var boroughsBenefited: [String]?

    public var constructionEndDate: DateTime?

    public var constructionStartDate: DateTime?

    public var consultationEndDate: DateTime?

    public var consultationPageUrl: String?

    public var consultationStartDate: DateTime?

    public var contactEmail: String?

    public var contactName: String?

    public var cycleSuperhighwayId: String?

    public var externalPageUrl: String?

    public var phase: Phase?

    public var projectDescription: String?

    public var projectId: String?

    public var projectName: String?

    public var projectPageUrl: String?

    public var projectSummaryPageUrl: String?

    public var schemeName: String?

    public init(boroughsBenefited: [String]? = nil, constructionEndDate: DateTime? = nil, constructionStartDate: DateTime? = nil, consultationEndDate: DateTime? = nil, consultationPageUrl: String? = nil, consultationStartDate: DateTime? = nil, contactEmail: String? = nil, contactName: String? = nil, cycleSuperhighwayId: String? = nil, externalPageUrl: String? = nil, phase: Phase? = nil, projectDescription: String? = nil, projectId: String? = nil, projectName: String? = nil, projectPageUrl: String? = nil, projectSummaryPageUrl: String? = nil, schemeName: String? = nil) {
        self.boroughsBenefited = boroughsBenefited
        self.constructionEndDate = constructionEndDate
        self.constructionStartDate = constructionStartDate
        self.consultationEndDate = consultationEndDate
        self.consultationPageUrl = consultationPageUrl
        self.consultationStartDate = consultationStartDate
        self.contactEmail = contactEmail
        self.contactName = contactName
        self.cycleSuperhighwayId = cycleSuperhighwayId
        self.externalPageUrl = externalPageUrl
        self.phase = phase
        self.projectDescription = projectDescription
        self.projectId = projectId
        self.projectName = projectName
        self.projectPageUrl = projectPageUrl
        self.projectSummaryPageUrl = projectSummaryPageUrl
        self.schemeName = schemeName
    }

    private enum CodingKeys: String, CodingKey {
        case boroughsBenefited
        case constructionEndDate
        case constructionStartDate
        case consultationEndDate
        case consultationPageUrl
        case consultationStartDate
        case contactEmail
        case contactName
        case cycleSuperhighwayId
        case externalPageUrl
        case phase
        case projectDescription
        case projectId
        case projectName
        case projectPageUrl
        case projectSummaryPageUrl
        case schemeName
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        boroughsBenefited = try container.decodeArrayIfPresent(.boroughsBenefited)
        constructionEndDate = try container.decodeIfPresent(.constructionEndDate)
        constructionStartDate = try container.decodeIfPresent(.constructionStartDate)
        consultationEndDate = try container.decodeIfPresent(.consultationEndDate)
        consultationPageUrl = try container.decodeIfPresent(.consultationPageUrl)
        consultationStartDate = try container.decodeIfPresent(.consultationStartDate)
        contactEmail = try container.decodeIfPresent(.contactEmail)
        contactName = try container.decodeIfPresent(.contactName)
        cycleSuperhighwayId = try container.decodeIfPresent(.cycleSuperhighwayId)
        externalPageUrl = try container.decodeIfPresent(.externalPageUrl)
        phase = try container.decodeIfPresent(.phase)
        projectDescription = try container.decodeIfPresent(.projectDescription)
        projectId = try container.decodeIfPresent(.projectId)
        projectName = try container.decodeIfPresent(.projectName)
        projectPageUrl = try container.decodeIfPresent(.projectPageUrl)
        projectSummaryPageUrl = try container.decodeIfPresent(.projectSummaryPageUrl)
        schemeName = try container.decodeIfPresent(.schemeName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(boroughsBenefited, forKey: .boroughsBenefited)
        try container.encodeIfPresent(constructionEndDate, forKey: .constructionEndDate)
        try container.encodeIfPresent(constructionStartDate, forKey: .constructionStartDate)
        try container.encodeIfPresent(consultationEndDate, forKey: .consultationEndDate)
        try container.encodeIfPresent(consultationPageUrl, forKey: .consultationPageUrl)
        try container.encodeIfPresent(consultationStartDate, forKey: .consultationStartDate)
        try container.encodeIfPresent(contactEmail, forKey: .contactEmail)
        try container.encodeIfPresent(contactName, forKey: .contactName)
        try container.encodeIfPresent(cycleSuperhighwayId, forKey: .cycleSuperhighwayId)
        try container.encodeIfPresent(externalPageUrl, forKey: .externalPageUrl)
        try container.encodeIfPresent(phase, forKey: .phase)
        try container.encodeIfPresent(projectDescription, forKey: .projectDescription)
        try container.encodeIfPresent(projectId, forKey: .projectId)
        try container.encodeIfPresent(projectName, forKey: .projectName)
        try container.encodeIfPresent(projectPageUrl, forKey: .projectPageUrl)
        try container.encodeIfPresent(projectSummaryPageUrl, forKey: .projectSummaryPageUrl)
        try container.encodeIfPresent(schemeName, forKey: .schemeName)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? RoadProject else { return false }
      guard self.boroughsBenefited == object.boroughsBenefited else { return false }
      guard self.constructionEndDate == object.constructionEndDate else { return false }
      guard self.constructionStartDate == object.constructionStartDate else { return false }
      guard self.consultationEndDate == object.consultationEndDate else { return false }
      guard self.consultationPageUrl == object.consultationPageUrl else { return false }
      guard self.consultationStartDate == object.consultationStartDate else { return false }
      guard self.contactEmail == object.contactEmail else { return false }
      guard self.contactName == object.contactName else { return false }
      guard self.cycleSuperhighwayId == object.cycleSuperhighwayId else { return false }
      guard self.externalPageUrl == object.externalPageUrl else { return false }
      guard self.phase == object.phase else { return false }
      guard self.projectDescription == object.projectDescription else { return false }
      guard self.projectId == object.projectId else { return false }
      guard self.projectName == object.projectName else { return false }
      guard self.projectPageUrl == object.projectPageUrl else { return false }
      guard self.projectSummaryPageUrl == object.projectSummaryPageUrl else { return false }
      guard self.schemeName == object.schemeName else { return false }
      return true
    }

    public static func == (lhs: RoadProject, rhs: RoadProject) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
