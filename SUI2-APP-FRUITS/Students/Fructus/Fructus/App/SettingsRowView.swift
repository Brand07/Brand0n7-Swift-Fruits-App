//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Brandon Yates on 4/7/24.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    
    //MARK: - BODY
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.blue)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            
            }
        }
    }
}

#Preview {
    SettingsRowView(name: "Developer", content: "Brandon")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
}
