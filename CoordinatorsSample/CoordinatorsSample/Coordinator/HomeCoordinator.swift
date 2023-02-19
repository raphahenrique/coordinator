//
//  MainCoordinator.swift
//  CoordinatorsSample
//
//  Created by Raphael Henrique on 12/04/20.
//  Copyright © 2020 TBD-patrichel. All rights reserved.
//

import RCoordinator
import UIKit

class HomeCoordinator: Coordinator {

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = HomeViewController()
        vc.homeCoordinator = self
        push(viewController: vc, animated: false)
    }
    
}

extension HomeCoordinator: SampleEventProtocol {

    func handle(event: SampleEvents) {
        switch event {
        case .goToBuyVC:
            let buyVC = BuyViewController()
            push(viewController: buyVC, animated: true)
        case .createAccount:
            let createAccountVC = CreateAccountViewController()
            present(viewController: createAccountVC, animated: true)
        }

    }
    
}
