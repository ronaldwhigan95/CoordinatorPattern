//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Ronald Chester Whigan on 5/17/23.
//

import UIKit

class SecondViewController: UIViewController {
    var delegate: SecondViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(navigateBackToFirstpage))
        self.navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func navigateBackToFirstpage() {
        self.delegate?.navigateToFirstPage()
    }
    

    @IBAction func goToThird(_ sender: Any) {
        self.delegate?.navigateToThirdPage()
    }

}

protocol SecondViewControllerDelegate: AnyObject {
    func navigateToFirstPage()
    func navigateToThirdPage()
}
