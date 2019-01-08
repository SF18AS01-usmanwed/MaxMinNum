//
//  ViewController.swift
//  MaxMinNum
//
//  Created by Ousmane Ouedraogo on 1/6/19.
//  Copyright © 2019 Ousmane Ouedraogo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .yellow
        
        let bounds = maxMin( num: [ 8,3,-4 ,98,7,10,105])
        label.text = String (" min is \(bounds.min) and max is \(bounds.max)")

    }
    

    @IBAction func returnButton(_ sender: UITextField) {
       sender.resignFirstResponder()
    }
}


func maxMin(num: [Int]) -> (min: Int, max: Int) {
    var currMin = num[0]
    var currMax = num[0]
    for value in num[1..<num.count] {
        if value < currMin {
            currMin = value
        }
        else if value > currMax {
            currMax = value
        }
    }
    return ( currMin, currMax )
    
}


