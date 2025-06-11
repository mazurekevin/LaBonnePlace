//
//  MainTabView.swift
//  LaBonnePlace
//
//  Created by teamdoc on 11/06/2025.
//

import Foundation
import SwiftUI


struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            SecondView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }

            ThirdView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }

            FourthView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}
