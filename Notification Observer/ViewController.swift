//
//  ViewController.swift
//  Notification Observer
//
//  Created by Sabbir on 2/5/20.
//  Copyright © 2020 Sabbir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(facebook(notification:)), name: .facebook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(twitter(notification:)), name: .Twitter, object: nil)
    }
    
    @objc func facebook(notification:Notification){
        lbl.text = "Sabbir"
        img.image = #imageLiteral(resourceName: "sabbir")
        
    }
    
    @objc func twitter(notification:Notification){
        
        lbl.text = "Joseph"
        img.image = #imageLiteral(resourceName: "josep")
        
    }
    

    @IBAction func choose(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
}

  extension Notification.Name{
        static let facebook = Notification.Name("Sabbir")
        static let Twitter = Notification.Name("Joseph")
        
    }

