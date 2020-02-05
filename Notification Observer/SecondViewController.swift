//
//  SecondViewController.swift
//  Notification Observer
//
//  Created by Sabbir on 2/5/20.
//  Copyright © 2020 Sabbir. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func sa(_ sender: Any) {
        NotificationCenter.default.post(name: .facebook, object: nil)
        
    }
    
    @IBAction func ta(_ sender: Any) {
         NotificationCenter.default.post(name: .Twitter, object: nil)
        
    }
}
