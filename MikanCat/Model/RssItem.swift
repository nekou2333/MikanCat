//
//  RssItem.swift
//  MikanCat
//
//  Created by 赵宇轩 on 2024/1/12.
//

import Foundation
import SwiftData

@Model
final class RssItem {
    var name: String = ""
    var url: String = ""
    var aggregate: Bool = true
    var parser: String = ""
    var enabled: Bool = true
    
    init(){}
    
    init(name: String, url: String, parser: String) {
        self.name = name
        self.url = url
        self.parser = parser
    }
}
