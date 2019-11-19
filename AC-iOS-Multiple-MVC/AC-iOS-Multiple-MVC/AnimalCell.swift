//
//  AnimalCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by World Domination a Brand on 11/18/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalCell: UITableViewCell {

    @IBOutlet weak var AnimalImage: UIImageView!
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalOriginLabel: UILabel!
    
    
    // what is this for .. to allow for each element to be accessed and assign the variables to each one
    func configureCell(for zooanimal: ZooAnimal) {
        AnimalImage.image = UIImage(named: "\(zooanimal.imageNumber)")
        animalNameLabel.text = zooanimal.name
        animalOriginLabel.text = zooanimal.origin
    }
    
    
    

}
