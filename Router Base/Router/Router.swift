//
//  Router.swift
//  Router Base
//
//  Created by Jeet Pardeshi on 27/09/25.
//

import Combine
import SwiftUI

class Router: ObservableObject {
    enum Route: Hashable {
        // Dynamic Routing Example
        case view1
        case view2
        case view3
        
        // Contact List Example
        case contact
        case contactDetail(Contact)
    }
    
    @Published var path: NavigationPath = NavigationPath()
    
    @ViewBuilder func view(for route: Route) -> some View {
        switch route {
            
        // Dynamic Routing
        case .view1:
            View1()
        case .view2:
            View2()
        case .view3:
            View3()
            
        // Contact List
        case .contact:
            ContactsView()
        case let .contactDetail(contact):
            ContactDetailsView(contact: contact)
        }
    }
    
    func navigate(to route: Route) {
        path.append(route)
    }
    
    func navigateBack() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func resetPath() {
        path = NavigationPath()
    }
}
