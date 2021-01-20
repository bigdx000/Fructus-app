//
//  ContentView.swift
//  Fructus
//
//  Created by Derek Hudson on 9/27/20.
//

import SwiftUI



struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    
// Mark: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                        } 
                    }
                }
            .navigationTitle("Fruits")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView(fruits: fruitsData)
                .previewDevice("iPhone 11 Pro Max")
        }
    }
