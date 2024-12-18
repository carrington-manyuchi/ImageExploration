//
//  TabViewExample.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/17.
//

import SwiftUI

struct TabViewExample: View {
    @State var selectedTab = "One"
    
    var body: some View {
        
        ZStack {
            Color
                .blue
                .opacity(0.3)
                .ignoresSafeArea()
            TabView(selection: $selectedTab) {
                Text("Hello")
                    .tag("One")
                Text("Morning")
                    .tag("Two")
                Text("World")
                    .tag("Three")
                Text("Evening")
                    .tag("Four")
                
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .ignoresSafeArea()
        }
    }
    
    
}

#Preview {
    TabViewExample()
}
