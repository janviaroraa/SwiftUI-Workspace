//
//  UserDefaultsWorkspace.swift
//  WeSplit
//
//  Created by Janvi Arora on 06/01/25.
//

import SwiftUI

struct User: Codable {
    let name: String
    let age: Int
}

struct UserDefaultsWorkspace: View {
    @State private var user = User(name: "Janvi", age: 23)

    @AppStorage("Tap Count 1") private var tapCount1 = 0

    @State private var tapCount2 = UserDefaults.standard.integer(forKey: "Tap Count 2")

    var body: some View {
        Button("Tap Count : \(tapCount1)") {
            tapCount1 += 1
        }

        Button("Tap Count : \(tapCount2)") {
            tapCount2 += 1
            UserDefaults.standard.setValue(tapCount2, forKey: "Tap Count 2")
        }

        Button("Save User !") {
            if let data = try? JSONEncoder().encode(user) {
                UserDefaults.standard.setValue(data, forKey: "User")
            }
        }
    }
}

#Preview {
    UserDefaultsWorkspace()
}
