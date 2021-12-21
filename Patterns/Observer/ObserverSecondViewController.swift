//
//  ObserverSecondViewController.swift
//  Patterns
//
//  Created by Sergey Simashov on 21.12.2021.
//

import UIKit

class ObserverSecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func SendNotificationPressed(_ sender: Any) {
        let someNotification = Notification.Name("someNotification")
        NotificationCenter.default.post(name: someNotification, object: nil, userInfo: ["color": UIColor.blue])
    }
    
}
