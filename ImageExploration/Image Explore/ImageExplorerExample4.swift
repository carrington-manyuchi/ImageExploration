//
//  ImageExplorerExample4.swift
//  ImageExploration
//
//  Created by Manyuchi, Carrington C on 2024/12/16.
//

import SwiftUI

struct ImageExplorerExample4: View {
    @State private var showName: Bool = false
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 30) {
                ForEach(MoreImages.allCases, id: \.self) { image in
                    let name = image.rawValue
                    let niceName = name.replacingOccurrences(of: "img", with: "")
                    Image(name)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.25)
                        .scaledToFit()
                        .clipShape(.rect(cornerRadius: 20))
                        .padding()
                        .shadow(color: .black.opacity(0.5), radius: 10, x: 1, y: 1)
                       // .shadow(color: .white.opacity(0.7), radius: 5, x: 5, y: 5)

                        .overlay {
                            Text(showName ? niceName.capitalized : name)
                                .foregroundStyle(.white)
                                .font(.title)
                                .fontWeight(.semibold)
                        }
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 1)) {
                                showName.toggle()
                            }
                        }
                }
            }
        }
    }
}

#Preview {
    ImageExplorerExample4()
}
