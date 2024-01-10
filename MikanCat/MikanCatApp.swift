//
//  MikanCatApp.swift
//  MikanCat
//
//  Created by 赵宇轩 on 2024/1/8.
//

import SwiftUI
import SwiftData
import TMDb

@main
struct MikanCatApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
            Bangumi.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
        
        let tmdbConfiguration = TMDbConfiguration(apiKey: "6d1fb35dc01d7b0e339a8747fb8450c7")
        TMDb.configure(tmdbConfiguration)
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
