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
            CustomBackgroundView()
             VStack {
                 VStack(alignment: .leading) {
                     HStack {
                         Text("Hiking")
                             .fontWeight(.black)
                             .font(.system(size: 50))
                             .foregroundStyle(LinearGradient(colors: [Color.customGrayLight, Color.customGrayMedium], startPoint: .top, endPoint: .bottom))
                         
                         Button {
                             //ACTION: SHOW a sheet
                             print("The button pressed")
                         } label: {
                            CustomButtonView()
                         }
                     }
                     
                     Text("Fun and enjoyable activities for friends and families")
                         .multilineTextAlignment(.leading)
                         .italic()
                         .foregroundColor(.customGrayMedium)
                 }
                 
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
                        .frame(width: 200,height: 200)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
            }
        }
        .frame(width: 300, height: 400)
    }
}

#Preview {
    CardView()
}
