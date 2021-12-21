//
//  DelegateSecondViewController.swift
//  Patterns
//
//  Created by Sergey Simashov on 21.12.2021.
//

import UIKit

class DelegateSecondViewController: UIViewController {

    @IBOutlet weak var labelView: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ctrl = segue.destination as! AppleViewController
        ctrl.delegate = self
    }

}

extension DelegateSecondViewController: AppleViewControllerDelegate{

func fruitDidSelect(_ fruit: String) {
       labelView.text = fruit
   }
}
