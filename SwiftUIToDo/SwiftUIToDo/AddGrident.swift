//
//  AddGrident.swift
//  SwiftUIToDo
//
//  Created by Abdur Rahim on 24/01/24.
//

import Foundation
import SwiftUI

struct AddGrident : View {
    var body: some View {
        VStack {
            Text("iOS")
                .font(.system(size: 150))
                .foregroundStyle(
                    LinearGradient(colors: [.pink, .purple, .blue], startPoint: .topLeading, endPoint: .bottom)
                )
            Text("iOS")
                .font(.system(size: 120))
                .foregroundStyle(
                    LinearGradient(colors: [.pink, .purple, .blue], startPoint: .topLeading, endPoint: .bottom)
                )
        }
    }
}

struct AddGrident_Previews: PreviewProvider {
  static var previews: some View {
      AddGrident()
  }
}
