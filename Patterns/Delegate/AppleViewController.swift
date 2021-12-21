//
//  DelegateTableViewController.swift
//  Patterns
//
//  Created by Sergey Simashov on 21.12.2021.
//

import UIKit

class AppleViewController: UITableViewController {
    
    let apple = ["Яблоко", "Персик", "Киви"]
    
    weak var delegate: AppleViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apple.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AppleCell", for: indexPath)
        cell.textLabel?.text = apple[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let fruit = apple[indexPath.row]
        delegate?.fruitDidSelect(fruit)
        dismiss(animated: true, completion: nil)
    }
   
}

protocol AppleViewControllerDelegate: AnyObject{
    func fruitDidSelect(_ fruit: String)
}
