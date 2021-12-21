//
//  FirstViewController.swift
//  Patterns
//
//  Created by Sergey Simashov on 21.12.2021.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let session = Session.instance
        session.fio = "Иванов Иван Иванович"
        session.id = 1
        session.money = 9999
    }
    


}
