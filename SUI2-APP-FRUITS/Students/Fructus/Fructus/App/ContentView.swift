//
//  ContentView.swift
//  Fructus
//
//  Created by Brandon Yates on 4/2/24.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                FruitRowView(fruit: item)}
                .padding(.vertical, 4)
            }
            .navigationTitle("Fruits")
        }//: Navigation
        
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
