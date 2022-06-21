//
//  LucianoApp.swift
//  Shared
//
//  Created by Luciano Nicolini on 18/06/2022.
//

import SwiftUI

@main
struct LucianoApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
