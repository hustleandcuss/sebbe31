//
//  ViewController.swift
//  sebbe31
//
//  Created by Olivia Lennerö on 2019-09-10.
//  Copyright © 2019 Olivia Lennerö. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    
    @IBOutlet weak var wineButton: UIButton!
    @IBOutlet weak var martiniButton: UIButton!
    @IBOutlet weak var beerButton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cornerRadius = CGFloat(5)
        beerButton.layer.cornerRadius = cornerRadius
        martiniButton.layer.cornerRadius = cornerRadius
        wineButton.layer.cornerRadius = cornerRadius
        restartButton.layer.cornerRadius = cornerRadius
    }

    @IBAction func countDrinks(_ sender: Any) {
        count += 1
        if (count == 31) {
            countLabel.text = "YOU WON!! 💫"
        } else if (count == 62) {
            countLabel.text = "YOU CRAZY"
        } else if (count == 100) {
            countLabel.text = "YOU OK??"
        } else {
            countLabel.text = "\(count)"
        }
    }
    
    @IBAction func restart(_ sender: Any) {
        count = 0
        countLabel.text = "\(count)"
    }
}

