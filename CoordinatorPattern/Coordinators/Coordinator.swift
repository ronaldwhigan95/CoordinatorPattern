//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Ronald Chester Whigan on 5/17/23.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    
    init(navigationController: UINavigationController)
    
    func start()
}

