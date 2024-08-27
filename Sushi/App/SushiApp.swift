//
//  SushiApp.swift
//  Sushi
//
//  Created by Diego Rodriguez on 26/8/24.
//

import SwiftUI
import SwiftData

@main
struct SushiApp: App {
    var modelContainer: ModelContainer

    init() {
        do {
            modelContainer = try ModelContainer(for: SushiItem.self)
        } catch {
            fatalError("No se pudo crear el ModelContainer: \(error)")
        }

        // Popula los datos iniciales si es necesario
        let dataService = DataService(context: modelContainer.mainContext)
        dataService.populateInitialDataIfNeeded()
    }

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(DataService(context: modelContainer.mainContext))
        }
    }
}
