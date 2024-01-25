//
//  CardView.swift
//  SwiftUIToDo
//
//  Created by Abdur Rahim on 25/01/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color("ColorIndigoMedium"),
                            Color("ColorsSalmonLight")
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 256,height: 256)
            Image("image-1")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    CardView()
}
