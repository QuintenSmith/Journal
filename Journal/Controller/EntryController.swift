//
//  EntryController.swift
//  Journal
//
//  Created by Quinten Smith on 8/22/18.
//  Copyright © 2018 Quinten Smith. All rights reserved.
//

import Foundation

class EntryController {
    
    static let shared = EntryController()
    
    var entries: [Entry] = []
    
    // Create
    
    // Function that returns a string 
    func addEntryWith(title: String, text: String = "") {
        let newEntry = Entry(title: title, text: text)
        entries.append(newEntry)
    }
    
    // Read
    
    // Update
    func updateEntry(existingEntry: Entry, newTitle: String, newText: String) {
        existingEntry.text = newText
        existingEntry.title = newTitle 
    }
    
    // Delete
    func deleteEntry(entryToDelete: Entry) {
        guard let index = entries.index(of: entryToDelete) else { return }
        entries.remove(at: index) 
    }

    
    
    
}

