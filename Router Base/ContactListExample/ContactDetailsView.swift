//
//  ContactDetailsView.swift
//  Router Base
//
//  Created by Jeet Pardeshi on 27/09/25.
//

import SwiftUI

struct ContactDetailsView: View {
    @EnvironmentObject var router: Router
    let contact: Contact
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .font(.system(size: 72))
                .padding()
                .background(.gray.opacity(0.4))
                .clipShape(.circle)
            
            VStack {
                Text(contact.name)
                Text(contact.number)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(.gray.opacity(0.4))
            .cornerRadius(10)
            .padding(.top, 24)
            
            Spacer()
            
            Button("Back") {
                router.navigateBack()
            }
        }
        .padding()
    }
}

#Preview {
    ContactDetailsView(contact: Contact.mock.first!)
}
