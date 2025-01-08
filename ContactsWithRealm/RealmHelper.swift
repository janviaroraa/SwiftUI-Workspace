//
//  RealmHelper.swift
//  WeSplit
//
//  Created by Janvi Arora on 08/01/25.
//

import Foundation
import RealmSwift

class Contact: Object {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var firstName: String
    @Persisted var lastName: String

    convenience init(firstName: String, lastName: String) {
        self.init()
        self.firstName = firstName
        self.lastName = lastName
    }

    static var tempData: [Contact] {
        return [
            Contact(firstName: "Janvi", lastName: "Arora"),
            Contact(firstName: "Nandini", lastName: "Arora"),
            Contact(firstName: "Srithik", lastName: "Arora"),
        ]
    }
}
