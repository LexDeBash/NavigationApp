//
//  SecondViewController.swift
//  NavigationApp
//
//  Created by Alexey Efimov on 30/07/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "edit" {
            let thirdVC = segue.destination as! ThirdViewController
            thirdVC.text = segue.identifier
        }
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        let thirdVC = segue.source as! ThirdViewController
        title = thirdVC.text
    }
    
    deinit {
        print("The SecondVC has unloaded from memory")
    }

}
