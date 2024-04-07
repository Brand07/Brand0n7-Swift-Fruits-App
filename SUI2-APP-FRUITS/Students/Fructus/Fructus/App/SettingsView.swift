//
//  SettingsView.swift
//  Fructus
//
//  Created by Brandon Yates on 4/6/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var pressentationMode
    
    // MARK: - BODY
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            HStack {
                                Text("Fructus".uppercased()).fontWeight(.bold)
                                Spacer()
                                Image(systemName: "info.circle")
                            }
                    ) {
                        Text("Hello World!")
                    }
                    
                    //MARK: - SECTION 2
                    
                    //MARK: - SECTION 3
                    
                }//END OF VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    pressentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                })
                .padding()
            }//END OF SCROLLVIEW
            
        }//END OF NAV
        
    }
}

#Preview {
    SettingsView()
}
