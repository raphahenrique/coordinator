//
//  Coordinator.swift
//  CoordinatorsSample
//
//  Created by Raphael Henrique on 12/04/20.
//  Copyright © 2020 TBD-patrichel. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    
    var childCoordinator: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
    
}
