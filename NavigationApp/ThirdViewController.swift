//
//  ThirdViewController.swift
//  NavigationApp
//
//  Created by Alexey Efimov on 30/07/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    
    var text: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = text
    }
    
    @IBAction func closeVC() {
        text = textField.text
    }
    
    deinit {
        print("The ThirdVC has unloaded from memory")
    }
}
