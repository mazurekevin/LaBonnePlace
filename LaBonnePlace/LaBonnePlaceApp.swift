//
//  LaBonnePlaceApp.swift
//  LaBonnePlace
//
//  Created by teamdoc on 20/02/2025.
//

import SwiftUI

@main
struct LaBonnePlaceApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            LoginView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
