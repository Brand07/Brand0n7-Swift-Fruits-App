//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Brandon Yates on 4/6/24.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    
    
    //MARK: - BODY
    var body: some View {
        Text(fruit.title)
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
