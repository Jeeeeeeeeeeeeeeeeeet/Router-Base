//
//  View1.swift
//  Router Base
//
//  Created by Jeet Pardeshi on 27/09/25.
//

import SwiftUI

struct View1: View {
    @EnvironmentObject var router: Router
    @State var nextScreen: Router.Route = .view2
    
    var body: some View {
        VStack{
            Text("You are currently in View 1")
            
            Picker(selection: $nextScreen) {
                Text("View 2")
                    .tag(Router.Route.view2)
                Text("View 3")
                    .tag(Router.Route.view3)
            } label: {
                Text("Picker")
            }
            
            Button {
                router.navigate(to: nextScreen)
            } label: {
                Text("Go to \(nextScreen)")
            }
        }
        .navigationTitle(Text("View 1"))
    }
}

#Preview {
    NavigationStack {
        View1()
    }
}
