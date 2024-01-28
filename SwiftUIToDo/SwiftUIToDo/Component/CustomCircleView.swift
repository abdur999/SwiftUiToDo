//
//  CustomCircleView.swift
//  SwiftUIToDo
//
//  Created by Abdur Rahim on 28/01/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatedGradient: Bool = false
    var body: some View {
        Circle()
            .fill(LinearGradient(colors: [.customIndigoMedium, .customSalmonLight], startPoint: isAnimatedGradient ? .topLeading : .bottomLeading, endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing))
            .onAppear {
                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                    //Change state variable value
                    isAnimatedGradient.toggle()
                }
            }
            .frame(width: 260,height: 260)
    }
}

#Preview {
    CustomCircleView()
}
