//
//  ViewController.swift
//  AlarmPrototype
//
//  Created by Cameron Palmer on 29/7/21.
//

import UIKit

class AlarmViewController: UIViewController {

    @IBOutlet weak var tabBar: UITabBar!
    @IBOutlet weak var clockItem: UITabBarItem!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            navigationController?.popToRootViewController(animated: true)
        }
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        tabBar.frame.size.height = 60
        tabBar.frame.origin.y = view.frame.height - 60
        

    }
}

