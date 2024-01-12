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
//    var items: [Bangumi]
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Bangumi]
    
    let columns = Array(repeating: GridItem(.flexible(minimum: 200, maximum: 300)), count: 3)
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(items) { item in
                BangumiView(item: item)
            }
        }
        .padding()
    }
}

struct BangumiView: View {
    var item: Bangumi
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("236338")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
                .shadow(radius: 4)
                Text(item.official_title)
                    .font(.title3)
                    .truncationMode(.tail)
                    .lineLimit(1)
                Text(" Season \(item.season) ")
                    .font(.footnote)
//                    .padding(1.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 1.0)
                    )
                
            
        }
        .frame(width: 150)
    }
}

#Preview {
//    let items = [
//        Bangumi(official_title: "欢迎来到实力至上主义的教室", season: 3),
//        Bangumi(official_title: "憧憬成为魔法少女", season: 1),
//        Bangumi(official_title: "憧憬成为魔法少女", season: 1),
//        Bangumi(official_title: "憧憬成为魔法少女", season: 1)
//    ]
//    
//    return BangumiListView(items: items)
    BangumiListView()
        .modelContainer(for: Bangumi.self, inMemory: true)
}
