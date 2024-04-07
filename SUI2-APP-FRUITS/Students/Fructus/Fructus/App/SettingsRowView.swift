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
        HStack {
            Text(name).foregroundColor(.gray)
            Spacer()
            Text(content)
        
    }
    }
}

#Preview {
    SettingsRowView(name: "Developer", content: "Brandon")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
}
