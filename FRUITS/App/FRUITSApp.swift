//
//  FRUITSApp.swift
//  FRUITS
//
//  Created by Selin Çağlar on 17.11.2022.
//

import SwiftUI

@main
struct FRUITSApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else {
                ContentView()
            }
        }
    }
}
