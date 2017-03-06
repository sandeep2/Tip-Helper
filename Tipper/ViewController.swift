//
//  ViewController.swift
//  Tipper
//
//  Created by Lagisetty, Sandeep on 3/5/17.
//  Copyright © 2017 Lagisetty, Sandeep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billLabel.text!) ?? 0
        let tippercent = [0.18,0.2,0.25]
        let tip = bill*tippercent[tipControl.selectedSegmentIndex]
        
        let total = bill +  tip
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
}

