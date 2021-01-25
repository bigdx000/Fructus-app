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
                
                GroupBox(label: Text("Fructus".uppercased())) {
                    Text("Hello World")
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
