//
//  Item.swift
//  SwiftUIToDo
//
//  Created by Abdur Rahim on 24/01/24.
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
