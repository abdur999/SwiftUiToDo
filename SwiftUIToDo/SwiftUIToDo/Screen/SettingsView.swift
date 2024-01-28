//
//  SettingsView.swift
//  SwiftUIToDo
//
//  Created by Abdur Rahim on 28/01/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
            Section {
                //MARK: - Section Header
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing:-10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors:[.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint:.bottom))
                .padding(.top, 8)
                VStack {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but us even better once you are actually there. The hike that you hope to to again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("dust of the boosts! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,16)
                .frame(maxWidth: .infinity)
            }
           
            .listRowSeparator(.hidden)
            .multilineTextAlignment(.center)
            .padding(.bottom)
      
            //MARK: - Section Icons
            
        //MARK: - Section About
            Section(
                header: Text("About the app"),
                footer: HStack{
                Spacer()
                Text("copyright @allright reserved")
                Spacer()
                }
                .padding(.vertical, 10)
            ){
              CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                CustomListRowView(rowLabel: "Compaitability", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "John doe", rowTintColor: .mint)
                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo,
                    rowLinkLabel: "Credo Academy",
                    rowLinkDestination: "https://credo.academy")
            }
        }//: LIST
        }
        
}

#Preview {
    SettingsView()
}
