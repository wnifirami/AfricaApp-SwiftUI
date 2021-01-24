//
//  CodableBundleExtension.swift
//  AfricaApp-SwiftUI
//
//  Created by Rami Ounifi on 24/1/2021.
//

import Foundation
extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        /// steps:
        // 1 - locate json in file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate \(file) in bundle")
        }
        // 2 - Create proprty from data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("cant load \(file) from bundle")
        }
        // 3 - Create a decoder
        let decoder = JSONDecoder()
        // 4 - Create proprty from decoder data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("failed to decode \(file) from bundle")
        }
        // 5 - Return the ready to use data
        return loaded
    }
}
