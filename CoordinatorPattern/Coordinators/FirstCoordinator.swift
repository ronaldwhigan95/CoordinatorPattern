//
//  FirstCoordinator.swift
//  CoordinatorPattern
//
//  Created by Ronald Chester Whigan on 5/17/23.
//

import UIKit

class FirstCoordinator: Coordinator {
    let navigationController: UINavigationController
    var childCoordinators: [Coordinator] = []
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let firstViewController : FirstViewController = FirstViewController()
        firstViewController.delegate = self
        self.navigationController.viewControllers = [firstViewController]
    }
}

extension FirstCoordinator: FirstViewControllerDelegate {

    // Navigate to next page
    func navigateToNextPage() {
       let secondCoordinator = SecondCoordinator(navigationController: navigationController)
       secondCoordinator.delegate = self
       childCoordinators.append(secondCoordinator)
       secondCoordinator.start()
    }
}

extension FirstCoordinator: BackToFirstViewControllerDelegate {
    
    // Back from third page
    func navigateBackToFirstPage(newOrderCoordinator: SecondCoordinator) {
        navigationController.popToRootViewController(animated: true)
        childCoordinators.removeLast()
    }
}
