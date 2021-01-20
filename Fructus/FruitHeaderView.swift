//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Derek Hudson on 1/20/21.
//

import SwiftUI

struct FruitHeaderView: View {
    //: Properties
    
    var fruit: Fruit
    
    //: Body
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

    //: Preview
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
