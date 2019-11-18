//
//  ViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Tom Seymour on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // convert to UITableView always before dragging in stuff
    @IBOutlet weak var tableview: UITableView!
    
    var specificAnimals = [[ZooAnimal]]() {
        didSet {
            // need this in order to react after the zooAnimals get the assignments.
            tableview.reloadData() // adds the data into the table view
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // confroming to the datasource .. tells it to give access to tableview: let me do what I want to do regardless of what you think
//        tableview.dataSource = self
//        specificAnimals = ZooAnimal.get
    }

    
    


}

