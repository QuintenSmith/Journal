//
//  Entry.swift
//  Journal
//
//  Created by Quinten Smith on 8/22/18.
//  Copyright © 2018 Quinten Smith. All rights reserved.
//

import Foundation

class Entry: Equatable {
    
    static func == (lhs: Entry, rhs: Entry) -> Bool {
        if lhs.timestamp != rhs.timestamp { return false }
        if lhs.title != rhs.title { return false }
        if lhs.text != rhs.text { return false }
        return true
        }
    
    
//1. Add properties for timestamp, title, and body text
    var timestamp: Date
    var title: String
    var text: String


// 2. Add a memberwise initializer that takes parameters for each property
    init(timestamp: Date = Date(), title: String, text: String) {
        self.timestamp = timestamp
        self.title = title
        self.text = text 
    }
 
 
 // 3. Consider setting a default parameter value for timestamp.

}





