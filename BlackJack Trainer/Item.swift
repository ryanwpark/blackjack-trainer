//
//  Item.swift
//  BlackJack Trainer
//
//  Created by Ryan Park on 7/24/25.
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
