//
// AnimeList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct AnimeList: Codable {

    public var lastPage: Int?
    public var results: [Anime]?

    public init(lastPage: Int?, results: [Anime]?) {
        self.lastPage = lastPage
        self.results = results
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case lastPage = "last_page"
        case results
    }

}