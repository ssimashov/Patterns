//
//  ObserverFirstViewController.swift
//  Patterns
//
//  Created by Sergey Simashov on 21.12.2021.
//

import UIKit

class ObserverFirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let someNotification = Notification.Name("someNotification")
        NotificationCenter.default.addObserver(self, selector: #selector(changeColor(notification:)), name: someNotification, object: nil)    }
    
    @objc func changeColor(notification: Notification) {
            let color = notification.userInfo?["color"] as? UIColor ?? UIColor.red
            view.backgroundColor = color
        }
    
    deinit {
        let someNotification = Notification.Name("someNotification")
        NotificationCenter.default.removeObserver(self, name: someNotification, object: nil)
    }
}
