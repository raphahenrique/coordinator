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
    var router: Router?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.router = SampleRouter(navigationController: navigationController)
    }
    
    func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .yellow
        router?.handle(SampleRouterEvents.push(viewController: vc, animated: true))
    }
    
//    func buySubscription() {
//        let vc = BuyViewController.instantiate()
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: true)
//    }
//
//    func createAccount() {
//        let vc = CreateAccountViewController.instantiate()
//        vc.coordinator = self
//        navigationController.present(vc, animated: true, completion: nil)
//    }
    
    
    
}
