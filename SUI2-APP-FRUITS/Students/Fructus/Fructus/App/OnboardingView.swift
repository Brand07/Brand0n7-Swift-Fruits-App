//
//  OnboardingView.swift
//  Fructus
//
//  Created by Brandon Yates on 4/2/24.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: PROPERTY
    
    // MARK: BODY
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }//: LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}


// MARK: PREVIEW

#Preview {
    OnboardingView()
}
