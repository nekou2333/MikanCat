//
//  BangumiListView.swift
//  MikanCat
//
//  Created by 赵宇轩 on 2024/1/9.
//

import SwiftUI
import SwiftData
import TMDb



struct BangumiListView: View {
    var items: [Bangumi]
    @Environment(\.modelContext) private var modelContext
//    @Query private var items: [Bangumi]
    
    let columns = Array(repeating: GridItem(.flexible(minimum: 100)), count: 3)
    
    var body: some View {
        LazyVGrid(columns: columns, spacing:100) {
            ForEach(items) { item in
                BangumiView(item: item)
            }
        }
    }
}

struct BangumiView: View {
    var item: Bangumi
    
    
    var body: some View {
        Text("Hello, World!")
    }
}

func get_poster(item: Bangumi) async -> <#Return Type#> {
    let tmdbConfiguration = TMDbConfiguration(apiKey: "6d1fb35dc01d7b0e339a8747fb8450c7")
    TMDb.configure(tmdbConfiguration)
    
    do {
        let tvSeries = try await SearchService().searchTVSeries(query: item.official_title)
        
        let tvInfo = tvSeries.results.first
        return tvInfo?.posterPath
    } catch {
        print("Fetching series failed with error \(error)")
    }
    
}


#Preview {
    let items = [
        Bangumi(official_title: "欢迎来到实力至上主义的教室", season: 3),
        Bangumi(official_title: "憧憬成为魔法少女", season: 1)
    ]
    
    return BangumiListView(items: items)
//    BangumiListView()
//        .modelContainer(for: Bangumi.self, inMemory: true)
}
