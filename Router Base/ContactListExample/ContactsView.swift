//
//  ContactsView.swift
//  Router Base
//
//  Created by Jeet Pardeshi on 27/09/25.
//

import SwiftUI

struct ContactsView: View {
    @EnvironmentObject var router: Router
    let contactList: [Contact] = Contact.mock

    
    var body: some View {
        List(contactList) { contact in
            Button {
                router.navigate(to: .contactDetail(contact))
            } label: {
                Text(contact.name)
                    .font(.headline)
            }
            .buttonStyle(.plain)
        }
        .navigationTitle(Text("Contacts"))
    }
}

#Preview {
    ContactsView()
}
