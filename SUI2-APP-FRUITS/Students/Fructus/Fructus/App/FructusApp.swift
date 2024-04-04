//
//  FructusApp.swift
//  Fructus
//
//  Created by Brandon Yates on 4/2/24.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
            ContentView()
            }
        }
    }
}
