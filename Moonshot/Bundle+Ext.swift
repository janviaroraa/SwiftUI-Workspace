//
//  Bundle+Ext.swift
//  WeSplit
//
//  Created by Janvi Arora on 07/01/25.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = url(forResource: file, withExtension: "json") else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        do {
            let decoder = JSONDecoder()
            let formatter = DateFormatter()
            formatter.dateFormat = "y-MM-dd"
            decoder.dateDecodingStrategy = .formatted(formatter)

            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Failed to decode \(file) from bundle: \(error.localizedDescription)")
        }
    }
}
