//
//  ViewController.swift
//  tips
//
//  Created by Julia Yu on 1/19/16.
//  Copyright © 2016 julia yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        billField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        let tipPercent = [0.18, 0.2, 0.22]
        let bill = NSString(string: billField.text!).doubleValue
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        let total = tip + bill
    
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

