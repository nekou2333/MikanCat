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
    
    init(){}
    
    init(official_title: String, season: Int) {
        self.official_title = official_title
        self.season = season
    }
}

