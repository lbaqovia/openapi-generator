//
// Return.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Model for testing reserved words */
public struct Return: Codable, Hashable {

    public var `return`: Int?

    public init(`return`: Int? = nil) {
        self.`return` = `return`
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case `return` = "return"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(`return`, forKey: .`return`)
    }



}
