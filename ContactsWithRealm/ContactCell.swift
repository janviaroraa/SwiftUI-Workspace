//
//  ContactCell.swift
//  WeSplit
//
//  Created by Janvi Arora on 08/01/25.
//

import SwiftUI

struct ContactCell: View {
    let contact: Contact

    var body: some View {
        VStack(alignment: .leading) {
            Text(contact.firstName)
                .font(.headline)
                .foregroundColor(.primary)

            Text(contact.lastName)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}

#Preview {
    ContactCell(contact: Contact.tempData.first!)
}
