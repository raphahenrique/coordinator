//
//  SampleRouter.swift
//  CoordinatorsSample
//
//  Created by Raphael on 18/02/23.
//  Copyright © 2023 TBD-patrichel. All rights reserved.
//

import UIKit
import RCoordinator

enum SampleRouterEvents: RouterEvent {
    case present(viewController: UIViewController, animated: Bool, completion: (() -> Void)?)
    case dismiss(animated: Bool, completion: (() -> Void)?)
    case push(viewController: UIViewController, animated: Bool)
    case pop(animated: Bool)
}

class SampleRouter: Router {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func handle(_ event: RouterEvent) {
        handle(event)
    }
    
    func handle(_ event: SampleRouterEvents) {
        switch event {
        case .present(let viewController, let animated, let completion):
            navigationController.present(viewController, animated: animated, completion: completion)
        case .dismiss(let animated, let completion):
            navigationController.dismiss(animated: animated, completion: completion)
        case .push(let viewController, let animated):
            navigationController.pushViewController(viewController, animated: animated)
        case .pop(let animated):
            navigationController.popViewController(animated: animated)
        }
    }
}
