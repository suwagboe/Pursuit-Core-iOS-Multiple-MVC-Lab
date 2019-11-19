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
        tableview.dataSource = self
        specificAnimals = ZooAnimal.getData()
    }
    
    // need to do the prepare for segue function here

}

// UITableViewDelegate need this because ... cosmetic stuff.. sections and title are for delegate

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return specificAnimals[section].count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? AnimalCell else {
            fatalError("couldn't deque into AnimalCell")
            // if it doesnt't exist then an error will occur.
        }
        let animals = specificAnimals[indexPath.section][indexPath.row]
        
        //call the cell from above that was created which  is a reuseable cell
        // then call the configure function inside of the of the function.. because it has access to it because????...
        // saying to configure animals
        cell.configureCell(for: animals)
        
        return cell
    }
    
    //section funcs
    func numberOfSections(in tableView: UITableView) -> Int {
        return specificAnimals.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return specificAnimals[section].first?.name
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 200
      }
    
    
}
