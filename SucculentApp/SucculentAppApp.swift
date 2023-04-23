//
//  SucculentAppApp.swift
//  SucculentApp
//
//  Created by Alek Michelson on 4/22/23.
//

import SwiftUI

@main
struct SucculentAppApp: App {
    @StateObject private var model = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}

class Model: ObservableObject {
    // Handle account auth, deep linking here
    
    @Published var selectedSucculentID: Succulent.ID?
}
