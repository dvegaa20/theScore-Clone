//
//  DiscoverView.swift
//  theScoreApp
//
//  Created by Diego Vega Camacho on 12/12/23.
//

import Foundation
import SwiftUI

struct DiscoverView: View {
    @ObservedObject var coordinator: AppCoordinator

    var body: some View {
        VStack {
            Text("Contenido de la primera vista")
            Button("Ir a la siguiente vista") {
                // Llama al método del coordinador para navegar a la siguiente vista.
                coordinator.NavigateToNextView()
            }
        }
        .padding()
    }
}
