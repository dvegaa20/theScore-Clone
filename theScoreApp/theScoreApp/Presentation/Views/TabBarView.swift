//
//  TabBarView.swift
//  theScoreApp
//
//  Created by Diego Vega Camacho on 11/12/23.
//

import Foundation
import SwiftUI

struct TabBarView: View {
    @ObservedObject var coordinator: AppCoordinator
    
    var body: some View {
        TabView(selection: $coordinator.selectedTab) {
            NewsView(coordinator: coordinator)
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
                .tag(AppCoordinator.Tab.news)
            
            ScoresView(coordinator: coordinator)
                .tabItem {
                    Label("Scores", systemImage: "sportscourt")
                }
                .tag(AppCoordinator.Tab.scores)
            
            FavoritesView(coordinator: coordinator)
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
                .tag(AppCoordinator.Tab.favorites)
            
            DiscoverView(coordinator: coordinator)
                .tabItem {
                    Label("Discover", systemImage: "safari")
                }
                .tag(AppCoordinator.Tab.discover)
            
            LeaguesView(coordinator: coordinator)
                .tabItem {
                    Label("Leagues", systemImage: "trophy")
                }
                .tag(AppCoordinator.Tab.leagues)
        }
    }
}
