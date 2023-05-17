//
//  ThirdViewController.swift
//  CoordinatorPattern
//
//  Created by Ronald Chester Whigan on 5/17/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    public weak var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func goToFirst(_ sender: Any) {
        self.delegate?.navigateToFirstPage()
    }

}
