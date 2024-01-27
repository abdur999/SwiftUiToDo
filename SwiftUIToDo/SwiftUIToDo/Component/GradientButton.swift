//
//  GradientButton.swift
//  SwiftUIToDo
//
//  Created by Abdur Rahim on 27/01/24.
//

import SwiftUI
import Foundation
struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
//                Conditional statement with nil Coalesing
//                Condition ? A : B
                configuration.isPressed ?
//                A: When the user press the button
                LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
        :
//                B: When the button not pressed
                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
            .cornerRadius(40)
    }
}


