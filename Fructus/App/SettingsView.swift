//
//  SettingsView.swift
//  Fructus
//
//  Created by Derek Hudson on 1/25/21.
//

import SwiftUI

struct SettingsView: View {
    //: Properties
    
    @Environment(\.presentationMode) var presentationMode
    
    //: Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                } // Vstack
                
                // Section - 1
                
                GroupBox(
                    label:
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                ) {
                    Divider().padding(.vertical, 4)
                    
                    HStack(alignment: .center, spacing: 10){
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(9)
                    
                        Text("Most fruits are naturally low in fat, sodium and calories. None have chlesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                            .font(.footnote)
                    }
                }
                
                // Section - 2
                
                // Section - 3
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                    )
                .padding()
            } // ScrollView
        } // Nav
    }
}
    //: Preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
