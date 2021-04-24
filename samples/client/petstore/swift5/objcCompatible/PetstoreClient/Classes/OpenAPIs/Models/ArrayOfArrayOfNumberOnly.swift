//
// ArrayOfArrayOfNumberOnly.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

@objc public class ArrayOfArrayOfNumberOnly: NSObject, Codable {

    public var arrayArrayNumber: [[Double]]?

    public init(arrayArrayNumber: [[Double]]? = nil) {
        self.arrayArrayNumber = arrayArrayNumber
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case arrayArrayNumber = "ArrayArrayNumber"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(arrayArrayNumber, forKey: .arrayArrayNumber)
    }



}
