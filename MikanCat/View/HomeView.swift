//
//  HomeView.swift
//  MikanCat
//
//  Created by 赵宇轩 on 2024/1/12.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @Environment(\.modelContext) private var modelContext
//    @Query private var items: [Bangumi]
    
    var body: some View {
        NavigationSplitView {
           List {
                NavigationLink {
                    BangumiListView()
                } label: {
                    Text("主页")
                }
               NavigationLink {
                   RssManagerView(item: RssItem())
               } label: {
                   Text("Rss管理")
               }
            }
            .navigationSplitViewColumnWidth(min: 20, ideal: 50)
        } detail: {
            Text("Select an item")
        }
    }
}

#Preview {
    HomeView()
        .modelContainer(for: Bangumi.self, inMemory: true)
}
