//
//  AppCoordinator.swift
//  theScoreApp
//
//  Created by Diego Vega Camacho on 11/12/23.
//

import Foundation
import SwiftUI

class AppCoordinator: ObservableObject {
    @Published var selectedTab: Tab = .scores
    @Published var currentView: AnyView?
    
    enum Tab {
        case news
        case scores
        case favorites
        case discover
        case leagues
    }
    
    init () {
        self.currentView = AnyView(NewsView(coordinator: self))
    }
    
    func start() {
//        currentView = AnyView(LoadingView())
        guard let initialView = currentView else {
            fatalError("La vista inicial no se ha inicializado correctamente")
        }
    }
    
    func NavigateToTab(_ tab: Tab) {
        selectedTab = tab
        
        switch tab {
        case .news:
            currentView = AnyView(NewsView(coordinator: self))
            
        case .scores:
            currentView = AnyView(ScoresView(coordinator: self))
            
        case .favorites:
            currentView = AnyView(FavoritesView(coordinator: self))
            
        case .discover:
            currentView = AnyView(DiscoverView(coordinator: self))
            
        case .leagues:
            currentView = AnyView(LeaguesView(coordinator: self))
        }
    }
    
    func NavigateToNextView () {
        let nextView = AnyView(ScoresView(coordinator: self))
        currentView = nextView
    }
}
