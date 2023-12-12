//
//  theScoreAppApp.swift
//  theScoreApp
//
//  Created by Diego Vega Camacho on 11/12/23.
//

import SwiftUI

@main
struct theScoreAppApp: App {
    @StateObject private var coordinator = AppCoordinator()
    
    var body: some Scene {
        WindowGroup {
            TabBarView(coordinator: coordinator)
                .onAppear {
                    coordinator.start()
                }
        }
    }
}
