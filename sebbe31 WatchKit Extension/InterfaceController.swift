//
//  InterfaceController.swift
//  sebbe31 WatchKit Extension
//
//  Created by Olivia Lennerö on 2019-09-10.
//  Copyright © 2019 Olivia Lennerö. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var count = 0
    
    @IBOutlet var countLabel: WKInterfaceLabel!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func countDrinks() {
        count += 1
        if (count == 31) {
            countLabel.setText("YOU WON!! 💫")
        } else if (count == 62) {
            countLabel.setText("YOU CRAZY")
        } else if (count == 100) {
            countLabel.setText("YOU OK??")
        } else {
            countLabel.setText("\(count)")
        }
    }
    
    @IBAction func restart() {
        count = 0
        countLabel.setText("\(count)")
    }
}
