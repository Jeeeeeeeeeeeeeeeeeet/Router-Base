//
//  ContentView.swift
//  Router Base
//
//  Created by Jeet Pardeshi on 27/09/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack(spacing: 12) {
            Button("Contact List Example") {
                router.navigate(to: .contact)
            }
            
            Button("Dynamic Destination Example") {
                router.navigate(to: .view1)
            }
        }
        .navigationTitle(Text("Router Examples"))
    }
}

#Preview {
    ContentView()
}

