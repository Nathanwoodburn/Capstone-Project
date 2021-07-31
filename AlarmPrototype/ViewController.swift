//
//  ViewController.swift
//  AlarmPrototype
//
//  Created by Cameron Palmer on 29/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tabBar: UITabBar!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            navigationController?.popToRootViewController(animated: true)
        }
    }

}

