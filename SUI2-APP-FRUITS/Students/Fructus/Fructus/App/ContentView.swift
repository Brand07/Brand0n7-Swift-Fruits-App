//
//  ContentView.swift
//  Fructus
//
//  Created by Brandon Yates on 4/2/24.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)}
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
            trailing:
                Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }//END OF BUTTON
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            )
        }//: Navigation
        
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
