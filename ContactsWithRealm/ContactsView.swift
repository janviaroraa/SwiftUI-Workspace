//
//  ContactsView.swift
//  WeSplit
//
//  Created by Janvi Arora on 08/01/25.
//

import SwiftUI

struct ContactsView: View {
    @State private var isShowing = false
    @State private var items: [Contact] = Contact.tempData

    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(0..<items.count, id: \.self) { index in
                        ContactCell(contact: items[index])
                    }
                    .onDelete(perform: delete)
                }

                Section {
                    ForEach(0..<items.count, id: \.self) { index in
                        ContactCell(contact: items[index])
                            .swipeActions {
                                Button {
                                    items.remove(at: index)
                                } label: {
                                    Text("Delete")
                                }
                                .tint(.red)

                                Button {
                                    showAlert(toAdd: false, index: index)
                                } label: {
                                    Text("Update")
                                }
                                .tint(.indigo)
                            }
                    }
                }
            }
            .navigationTitle("Contacts")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showAlert(toAdd: true)
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }

    func delete(_ offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

extension ContactsView {

    // not using the default Alert here, because we can't add textfields in the SwiftUI's default Alert.
    // Creating our custom alert here!
    func showAlert(toAdd: Bool, index: Int = 0) {
        let text = toAdd ? "Add" : "Edit"

        let alertController = UIAlertController(
            title: "\(text) Contact",
            message: "Please \(text) your contact details",
            preferredStyle: .alert
        )

        alertController.addTextField { firstTextField in
            firstTextField.placeholder = toAdd ? "Enter your First Name" : items[index].firstName
        }

        alertController.addTextField { lastTextField in
            lastTextField.placeholder = toAdd ? "Enter your Last Name" : items[index].lastName
        }

        let save = UIAlertAction(title: "Save", style: .default) { action in
            if let firstName = alertController.textFields?[0].text,
               let lastName = alertController.textFields?[1].text {
                let contact = Contact(firstName: firstName, lastName: lastName)

                if toAdd {
                    items.append(contact)
                    RealmHelper.shared.addContact(contact)
                } else {
                    items[index] = contact
                }
            }
        }

        let cancel = UIAlertAction(title: "Cancel", style: .cancel)

        alertController.addAction(save)
        alertController.addAction(cancel)

        UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: true)
    }
}

#Preview {
    ContactsView()
}
