//
//  ContentView.swift
//  Router Base
//
//  Created by Jeet Pardeshi on 27/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RouterView {
            View1()
        }
    }
}

#Preview {
    ContentView()
}

// Views to Demonstrate how to use Router

struct View1: View {
    @EnvironmentObject var router: Router
    @State var nextScreen: Router.Route = .view2
    
    var body: some View {
        Text("View 1")
        
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
            Text("Next Screen")
        }
    }
}

struct View2: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        Text("View 2")
        
        Button("Go to View 3") {
            router.navigate(to: .view3)
        }
    }
}

struct View3: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        Text("View 3")
        
        Button("Pop to Root") {
            router.popToRoot()
        }
        
        Button("Go Back") {
            router.navigateBack()
        }
    }
}
