//
//  AdviceViewController.swift
//  TakeOff
//
//  Created by Casey Klecan on 6/19/17.
//  Copyright © 2017 Casey Klecan. All rights reserved.
//

import UIKit

class AdviceViewController: UIViewController {
    
    var headerText : String = ""
    var labelText : String = ""

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerLabel.text = headerText
        adviceLabel.text = labelText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func setHeader(text: String?) {
        if let newtext = text {
            headerText = newtext
        } else {
            headerText = "Try this: "
        }
    }
    
    public func setAdvice(text: String?) {
        if let newtext = text {
            labelText = newtext
        } else {
            labelText = "meditate :)"
        }
        
    }

}
