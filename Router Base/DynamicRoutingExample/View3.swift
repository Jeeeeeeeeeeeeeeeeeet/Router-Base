//
//  View3.swift
//  Router Base
//
//  Created by Jeet Pardeshi on 27/09/25.
//

import SwiftUI

struct View3: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack(spacing: 12) {
            Text("View 3")
            
            Button("Pop to Root") {
                router.popToRoot()
            }
            
            Button("Go Back") {
                router.navigateBack()
            }
        }
        .navigationTitle(Text("View 3"))
    }
}

#Preview {
    View3()
}
