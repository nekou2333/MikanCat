//
//  RssManagerView.swift
//  MikanCat
//
//  Created by 赵宇轩 on 2024/1/12.
//

import SwiftUI
import SwiftData

struct RssManagerView: View {
    var item: RssItem
    
    var body: some View {
        VStack {
            HStack {
                Text("Rss条目")
                Spacer()
            }
            .background(Color.indigo)
            Grid {
                GridRow {
                    Text("名称")
                    Text(item.name)
                }
                GridRow {
                    Text("Url")
                    Text(item.url)
                }
                GridRow {
                    Text("状态")
                    Text(String(item.enabled))
                }
            }
        }
    }
}

#Preview {
    let example = RssItem(name: "mikan", url: "https://mikanime.tv/RSS/MyBangumi?token=dfWSQ69sLA5cUJuACtB08HaKCwAbkxg9c8VA92qPf6E%3d", parser: "tmdb")
    
    return RssManagerView(item: example)
}
