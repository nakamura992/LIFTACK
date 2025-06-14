//
//  Item.swift
//  LIFTACK
//
//  Created by 中村龍輝 on 2025/06/15.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
