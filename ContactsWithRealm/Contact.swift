//
//  Contact.swift
//  WeSplit
//
//  Created by Janvi Arora on 08/01/25.
//

import Foundation
import RealmSwift

import UIKit
import RealmSwift

class RealmHelper {
    static let shared = RealmHelper()

    private var realm = try! Realm()

    init() { }

    func databaseURL() -> URL? {
        return realm.configuration.fileURL
    }

    func addContact(_ contact: Contact) {
        try! realm.write {
            realm.add(contact)
        }
    }

    func getAllContacts() -> [Contact] {
        return Array(realm.objects(Contact.self))
    }
}
