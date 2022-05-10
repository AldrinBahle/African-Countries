//
//  CountriesModel.swift
//  Countries
//
//  Created by Aldrin Gama on 2022/05/10.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)


// MARK: - Welcome
struct CountriesModel: Codable {
    let data: [Datum]
    let links: [Link]
    let metadata: Metadata
}

// MARK: - Datum
struct Datum: Codable {
    let code: String
    let currencyCodes: [String]
    let name, wikiDataID: String

    enum CodingKeys: String, CodingKey {
        case code, currencyCodes, name
        case wikiDataID = "wikiDataId"
    }
}

// MARK: - Link
struct Link: Codable {
    let rel, href: String
}

// MARK: - Metadata
struct Metadata: Codable {
    let currentOffset, totalCount: Int
}
