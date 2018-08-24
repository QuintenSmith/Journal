//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Quinten Smith on 8/23/18.
//  Copyright © 2018 Quinten Smith. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController {
    
    // step 1 drag out an outlet
    @IBOutlet weak var entyTextField: UITextField!
    
    @IBOutlet weak var bodyTextView: UITextView!
    
    var entry: Entry?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //step 2 drag out the action

        
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        
        guard let entryTitle = entyTextField.text else {return}
        guard let bodyText = bodyTextView.text else {return}
        EntryController.shared.addEntryWith(title: entryTitle, text: bodyText)
        
        navigationController?.popViewController(animated: true)
    }
    
//        //step 3 inside the action create an unwrapped variable set it equal to the outlets field.property
//        if let entryName = entyTextField.text {
//            EntryController.shared.updateEntry(existingEntry: entryName, newTitle: <#T##String#>, newText: <#T##String#>)
        
        //step 4 call shared controller to save that entry
}
