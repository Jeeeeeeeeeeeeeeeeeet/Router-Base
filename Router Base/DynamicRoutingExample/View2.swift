//
//  View2.swift
//  Router Base
//
//  Created by Jeet Pardeshi on 27/09/25.
//

import SwiftUI

struct View2: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("View 2")
            
            Button("Go to View 3") {
                router.navigate(to: .view3)
            }
        }
        .navigationTitle(Text("View 2"))
    }
}
#Preview {
    View2()
}
