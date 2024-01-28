//
//  CardView.swift
//  SwiftUIToDo
//
//  Created by Abdur Rahim on 25/01/24.
//

import SwiftUI

struct CardView: View {
    //MARK: - Properties
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    //MARK: - Functions
    func randomImage() {
        print("radomImage function fired")
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        imageNumber = randomNumber
    }

    
    var body: some View {
        
               
        ZStack {
            CustomCircleView()
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
                             isShowingSheet.toggle()
                         } label: {
                            CustomButtonView()
                         }
                         .sheet(isPresented: $isShowingSheet){
                             SettingsView()
                            .presentationDragIndicator(.visible)
                            .presentationDetents([.medium, .large])
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
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 1), value: imageNumber)
                }
                 //MARK: - Footer
                 Button {
                     print("The button pressed")
                     randomImage()
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
           MotionAnimationView()
        }
        .frame(width: 300, height: 400)
    }
}

#Preview {
    CardView()
}
