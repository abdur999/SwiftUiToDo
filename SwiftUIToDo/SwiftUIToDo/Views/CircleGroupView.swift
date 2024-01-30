//
//  CircleGroupView.swift
//  SwiftUIToDo
//
//  Created by Abdur Rahim on 28/01/24.
//

import SwiftUI



struct CircleGroupView: View {
    // MARK: - Property
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
            .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth:40 )
            .frame(width: 260, height: 260, alignment: .center)
            Circle().stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        } //: ZSTACK
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0.5)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

#Preview {
    ZStack {
        Color(.blue)
        .ignoresSafeArea(.all , edges: .all)
        CircleGroupView(ShapeColor:.white, ShapeOpacity: 0.2)
    }
}
