//
//  TableViewController.swift
//  AlarmPrototype
//
//  Created by Cameron Palmer on 31/7/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    var prototypes = ["", "1Alarm"]
    var viewControllers = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prototypes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Screen", for: indexPath)
        cell.textLabel?.text = prototypes[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: prototypes[indexPath.row]) as? ViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
