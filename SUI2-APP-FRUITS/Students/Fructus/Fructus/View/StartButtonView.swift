//
//  StartButtonView.swift
//  Fructus
//
//  Created by Brandon Yates on 4/2/24.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        Button(action : {
            print("Exit the onboarding")
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//HSATCK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }// BUTTON
        .accentColor(.white)
    }
}
//MARK - Preview
#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
