//
// ProductDB.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import RealmSwift
import kotlinMP

public enum ProductDBType: String, CaseIterable {
    case manga
    case anime
    
    static func from(str: String?) -> ProductDBType {
        if let tStr = str?.lowercased(), tStr == ProductDBType.manga.rawValue {
            return .manga
        } else {
            return .anime
        }
    }
}

@objcMembers
public final class ProductDB: Object, Codable, Identifiable {
    
    public static var naught: ProductDB {
        ProductDB(id: 0,
                imageUrl: "",
                title: "",
                synopsis: "",
                type: "",
                members: 0,
                score: 0)
    }
    
    public static func == (lhs: ProductDB, rhs: ProductDB) -> Bool {
        lhs.id == rhs.id
            && lhs.imageUrl == rhs.imageUrl
            && lhs.title == rhs.title
            && lhs.synopsis == rhs.synopsis
            && lhs.type == rhs.type
            && lhs.members == rhs.members
            && lhs.score == rhs.score
    }
    
    public var imgURL: URL? {
        URL(string: imageUrl)
    }
    
    public var typeProd: ProductDBType {
        ProductDBType.from(str: type)
    }
    
    public dynamic var id: Int = 0
    public dynamic var imageUrl: String = ""
    public dynamic var title: String = ""
    public dynamic var synopsis: String = ""
    public dynamic var type: String = ""
    public dynamic var members: Int = 0
    public dynamic var score: Double = 0
    
    public override static func primaryKey() -> String? {
        return "id"
    }
    
    public convenience init(kotlinModel: kotlinMP.Product) {
        self.init(id: Int(kotlinModel.malId),
                  imageUrl: kotlinModel.imageUrl,
                  title: kotlinModel.title,
                  synopsis: kotlinModel.synopsis,
                  type: kotlinModel.type,
                  members: Int(kotlinModel.members),
                  score: kotlinModel.score)
    }
    
    public convenience init(id: Int, imageUrl: String, title: String, synopsis: String, type: String, members: Int, score: Double) {
        self.init()
        self.id = id
        self.imageUrl = imageUrl
        self.title = title
        self.synopsis = synopsis
        self.type = type
        self.members = members
        self.score = score
    }
    
    public required convenience init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.imageUrl = try container.decode(String.self, forKey: .imageUrl)
        self.title = try container.decode(String.self, forKey: .title)
        self.synopsis = try container.decode(String.self, forKey: .synopsis)
        self.type = try container.decode(String.self, forKey: .type)
        self.members = try container.decode(Int.self, forKey: .members)
        self.score = try container.decode(Double.self, forKey: .score)
    }
    
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "mal_id"
        case imageUrl = "image_url"
        case title
        case synopsis
        case type
        case members
        case score
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(imageUrl, forKey: .imageUrl)
        try container.encode(title, forKey: .title)
        try container.encode(synopsis, forKey: .synopsis)
        try container.encode(type, forKey: .type)
        try container.encode(members, forKey: .members)
        try container.encode(score, forKey: .score)
    }
}