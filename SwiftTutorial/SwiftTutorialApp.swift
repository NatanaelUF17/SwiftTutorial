//
//  SwiftTutorialApp.swift
//  SwiftTutorial
//
//  Created by A on 9/9/21.
//

import SwiftUI

@main
struct SwiftTutorialApp: App {
        
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
