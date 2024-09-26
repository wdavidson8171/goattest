//
//  Item.swift
//  test`
//
//  Created by Waverly Davidson on 9/24/24.
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
