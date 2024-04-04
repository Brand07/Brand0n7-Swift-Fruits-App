//
//  OnboardingView.swift
//  Fructus
//
//  Created by Brandon Yates on 4/2/24.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: PROPERTY
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }//: LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}


// MARK: PREVIEW

#Preview {
    OnboardingView(fruits: fruitsData)
}
