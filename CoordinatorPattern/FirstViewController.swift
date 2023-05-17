//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Ronald Chester Whigan on 5/17/23.
//

import UIKit

class FirstViewController: UIViewController {
    
    var delegate: FirstViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        delegate = FirstCoordinator(navigationController: self.navigationController!)

    }
    
    @IBAction func goToSecondPage(_ sender: Any) {
        self.delegate?.navigateToNextPage()
    }
}

public protocol FirstViewControllerDelegate: AnyObject {
    func navigateToNextPage()
}


