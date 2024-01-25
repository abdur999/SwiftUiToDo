//
//  CustomButtonView.swift
//  SwiftUIToDo
//
//  Created by Abdur Rahim on 26/01/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle().stroke(LinearGradient(colors: [.customGrayLight,
                                                    .customGrayMedium],
                                           startPoint: .top,
                                           endPoint: .bottom),
                            lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
        }
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
}
