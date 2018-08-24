//
//  EntryTableViewController.swift
//  Journal
//
//  Created by Quinten Smith on 8/22/18.
//  Copyright © 2018 Quinten Smith. All rights reserved.
//

import UIKit

class EntryTableViewController: UITableViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    @IBAction func entryAddButton(_ sender: Any) {
        
    }
    

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return EntryController.shared.entries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EntryCell", for: indexPath)
        let entries = EntryController.shared.entries[indexPath.row]
        cell.textLabel?.text = entries.title
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */
   

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 1) First check your segue ID
        if segue.identifier == "DisplayEntry" {
        
            // 2) Get your destination VC
            let destinationVC = segue.destination as? EntryDetailViewController
            
            // 3) Get the selceted row that the user selecting on
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let entry = EntryController.shared.entries[indexPath.row]
        
            // 4) Pass your info to your mail box or landing pad
            destinationVC?.entry = entry 
        }
    }
 

}
