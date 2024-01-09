//
//  ContentView.swift
//  MikanCat
//
//  Created by 赵宇轩 on 2024/1/8.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Bangumi]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(items) { item in
                    NavigationLink {
                        Text("Item at \(item.official_title)")
                    } label: {
                        Text(item.official_title)
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .navigationSplitViewColumnWidth(min: 180, ideal: 200)
            .toolbar {
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Bangumi(official_title: "", year: "", title_raw: "", season: 1, season_raw: "", group_name: "", dpi: "", source: "", subtitle: "", eps_collect: true, offset: 1, filter: "", rss_link: "", poster_link: "", added: true, rule_name: "", save_path: "", deleted: false)
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Bangumi.self, inMemory: true)
}
