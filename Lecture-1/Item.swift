//
//  Item.swift
//  Lecture-1
//
//  Created by Furkan Gözübüyük on 13.01.2024.
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
