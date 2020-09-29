//
//  FruitCardView.swift
//  Fructus
//
//  Created by Derek Hudson on 8/11/20.
//

import SwiftUI

struct FruitCardView: View {
    // Mark: - Properties
    
    // Mark: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Fruit: Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 1.75), radius: 8, x: 6, y: 8)
                //Fruit: Title
                Text("Blueberry")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 1.75), radius: 3, x: 2, y: 3)
                //Fruit: Headline
                Text("Blueberries are sweet, nutritious and widley popular all over the world.")
                    .foregroundColor(Color.white)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(red: 0, green: 0, blue:0, opacity: 0.95), radius: 3, x: 2, y: 3)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                //Button: Start
                StartButtonView()
            }//: VSTACK
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        }//: ZSTACK
    }
}

// Mark: - Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 460, height: 920))
            
            
        
    }
}
