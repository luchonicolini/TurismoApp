//
//  ExampleApp.swift
//  Shared
//
//  Created by Luciano Nicolini on 27/08/2022.
//

import SwiftUI

@main
struct ExampleApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
