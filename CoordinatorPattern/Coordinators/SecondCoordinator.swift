//
//  SecondCoordinator.swift
//  CoordinatorPattern
//
//  Created by Ronald Chester Whigan on 5/17/23.
//

import UIKit

class SecondCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    let navigationController: UINavigationController
    
    weak var delegate: BackToFirstViewControllerDelegate?
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vs = sb.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        let secondViewController : SecondViewController = vs!
        secondViewController.delegate = self
        self.navigationController.pushViewController(secondViewController, animated: true)
    }
}

protocol BackToFirstViewControllerDelegate: AnyObject {
    
    func navigateBackToFirstPage(newOrderCoordinator: SecondCoordinator)
    
}

extension SecondCoordinator : SecondViewControllerDelegate {
    
    // Navigate to third page
    func navigateToThirdPage() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vs = sb.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController
        let thirdViewController : ThirdViewController = vs!
        thirdViewController.delegate = self
        self.navigationController.pushViewController(thirdViewController, animated: true)
    }
    
    // Navigate to first page
    func navigateToFirstPage() {
        self.delegate?.navigateBackToFirstPage(newOrderCoordinator: self)
    }
}
