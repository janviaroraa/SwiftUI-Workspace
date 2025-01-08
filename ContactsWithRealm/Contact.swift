//
//  Contact.swift
//  WeSplit
//
//  Created by Janvi Arora on 08/01/25.
//

import Foundation

class Contact {
    var id = UUID().uuidString
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    static var tempData = [
        Contact(firstName: "Janvi", lastName: "Arora"),
        Contact(firstName: "Nandini", lastName: "Arora"),
        Contact(firstName: "Srithik", lastName: "Arora"),
    ]
}
