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
                 //MARK: - Footer
                 Button {
                     print("The button pressed")
                 } label: {
                     Text("Explore more")
                         .font(.title2)
                         .fontWeight(.heavy)
                         .foregroundStyle(LinearGradient(colors: [.customGreenLight,.customGrayMedium], startPoint: .top, endPoint: .bottom))
                         .shadow(color: .black, radius: 0.25,x: 1, y: 2)
                 }
//                 .buttonStyle(.borderedProminent)
//                 .tint(.indigo)
//                 .padding(.vertical)
//                 .padding(.horizontal,30)
                 
//                 Rather than writing huge style statement its beneficial to use custom style benefits are It's reusable 
//                 .background(LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
//                 .cornerRadius(40)
                 .buttonStyle(GradientButton())
            }
             
        }
        .frame(width: 300, height: 400)
    }
}

#Preview {
    CardView()
}
