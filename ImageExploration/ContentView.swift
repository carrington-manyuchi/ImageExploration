//
//  ContentView.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           
            Text("Hello, world!")
                .onAppear {
                    for i in 0...48 {
                        print("\tcase img\(i)")
                    }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
