//
//  ThirdViewController.swift
//  Patterns
//
//  Created by Sergey Simashov on 21.12.2021.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var nameView: UILabel!
    @IBOutlet weak var moneyView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let session = Session.instance
        nameView.text = session.fio
        moneyView.text = String(describing: session.money)
    }
    
    
}
