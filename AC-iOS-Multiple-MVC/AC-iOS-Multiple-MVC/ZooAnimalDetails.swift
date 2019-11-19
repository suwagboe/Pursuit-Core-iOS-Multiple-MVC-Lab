//
//  ZooAnimalDetails.swift
//  AC-iOS-Multiple-MVC
//
//  Created by World Domination a Brand on 11/18/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//


import UIKit

class ZooAnimalDetails: UIViewController {


    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var animal: ZooAnimal?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
UpdateUI()
    }
    
    
    func UpdateUI()  {
      guard let theAnimal = animal else {
            fatalError("Couldnt get Animal origin")
        
        }
        title = theAnimal.name
        ImageView.image = UIImage(named: theAnimal.imageNumber.description)
        label.text = theAnimal.name
        textView.text = theAnimal.info
        
        
    }

}
