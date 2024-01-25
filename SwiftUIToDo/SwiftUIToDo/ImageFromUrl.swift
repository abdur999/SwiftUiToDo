//
//  Image fromUrl.swift
//  SwiftUIToDo
//
//  Created by Abdur Rahim on 25/01/24.
//

import Foundation
import SwiftUI
extension Image{
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 256)
            .foregroundColor(.purple)
            .scaledToFit()
            .opacity(0.6)
            
    }
}
struct ImageFromUrl: View {
    private let imageUrl: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
//    MARK: - 1. BASIC
//        AsyncImage(url: URL(string: imageUrl))
        
//      MARK: - 2. SCALE
//        AsyncImage(url: URL(string: imageUrl), scale: 3.0)
        
//        MARK: - 3. PLACEHOLDER
//        AsyncImage(url: URL(string: imageUrl)){
//            image in
//            image
//            .resizable()
//            .scaledToFit()
//        }placeholder: {
//            Image(systemName: "photo.circle.fill")
//                .resizable()
//                .scaledToFit()
//                .foregroundColor(.purple)
//                .opacity(0.6)
//                .frame(maxWidth: 256)
//        }
//        .padding(40)
//        
//    }
//        MARK: - 4. PlaceHolder with image extension ie- Reusable
//        AsyncImage(url: URL(string: imageUrl)){
//            image in
//            image.imageModifier()
//        }placeholder: {
//            Image(systemName: "photo.circle.fill").iconModifier()
//        }
//        .padding(40)
        
//    MARK: - 5. PHASE
//        AsyncImage(url: URL(string: imageUrl)){
//            phase in
//            //SUCCESS: The image successfully loaded
//            //FAILURE: The image successfully loaded
//            //EMPTY: No image loaded
//            if let image = phase.image{
//                image.imageModifier()
//            } else if phase.error != nil {
//                Image(systemName: "ant.circle.fill").iconModifier()
//            } else {
//                Image(systemName: "photo.circle.fill").iconModifier()
//            }
//        }
//        .padding(40)
        
//            MARK: - 6. ANIMATION (Animation work in runtime simulator and device not work in preview)
        AsyncImage(url: URL(string: imageUrl), transaction: Transaction(animation: .spring(response: 0.5 , dampingFraction: 0.6, blendDuration: 0.25))){
            phase in
            switch phase{
                case .success(let image ):
                    image.imageModifier()
                        .transition(.move(edge: .bottom))
                        //transition with scale is another option just like move
                case .empty:
                    Image(systemName: "photo.circle.fill").iconModifier()
                case.failure(let error):
                    Image(systemName: "ant.circle.fill").iconModifier()
                @unknown default:
                    ProgressView()
            }
            
        }
        .padding(40)
        
    }
}
struct ImageFromUrlPreview: PreviewProvider {
    
    static var previews: some View {
        ImageFromUrl()
    }
}
