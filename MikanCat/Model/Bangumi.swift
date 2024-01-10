//
//  Bangumi.swift
//  MikanCat
//
//  Created by 赵宇轩 on 2024/1/8.
//

import Foundation
import SwiftData

@Model
final class Bangumi {
    var official_title: String = ""
    var year: String = ""
    var title_raw: String = ""
    var season: Int = 1
    var season_raw: String = ""
    var group_name: String = ""
    var dpi: String = ""
    var source: String = ""
    var subtitle: String = ""
    var eps_collect: Bool = false
    var offset: Int = 0
    var filter: String = ""
    var rss_link: String = ""
    var poster_link: String = ""
    var added: Bool = false
    var rule_name: String = ""
    var save_path: String = ""
    var deleted: Bool = false
    
    init(official_title: String, year: String, title_raw: String, season: Int, season_raw: String, group_name: String, dpi: String, source: String, subtitle: String, eps_collect: Bool, offset: Int, filter: String, rss_link: String, poster_link: String, added: Bool, rule_name: String, save_path: String, deleted: Bool) {
        self.official_title = official_title
        self.year = year
        self.title_raw = title_raw
        self.season = season
        self.season_raw = season_raw
        self.group_name = group_name
        self.dpi = dpi
        self.source = source
        self.subtitle = subtitle
        self.eps_collect = eps_collect
        self.offset = offset
        self.filter = filter
        self.rss_link = rss_link
        self.poster_link = poster_link
        self.added = added
        self.rule_name = rule_name
        self.save_path = save_path
        self.deleted = deleted
    }
    
    init(official_title: String, season: Int) {
        self.official_title = official_title
        self.season = season
    }
}

