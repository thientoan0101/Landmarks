//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Toan Thien on 10/04/2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
