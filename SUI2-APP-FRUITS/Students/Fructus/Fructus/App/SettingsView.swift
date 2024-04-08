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
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9.0)
                            Text("Most fruits are naturally low in fat, sodium, and calories. Non have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }//END HSTACK
                    }
                    
                    //MARK: - SECTION 2
                    
                    
                    //MARK: - SECTION 3
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        SettingsRowView(name: "Developer", content: "Brandon")
                        SettingsRowView(name: "Designer", content: "Brandon ")
                        SettingsRowView(name: "Compatibility", content: "iOS 17")
                        SettingsRowView(name:"Website",linkLabel:"GitHub",linkDestination:"github.com/Brand07")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                        
                    }
                    
                    
                    
                        
                    }//END OF HSTACK
                    
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

#Preview {
    SettingsView()
}
