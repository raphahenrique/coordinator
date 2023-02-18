//
//  BaseCoordinator.swift
//  
//
//  Created by Raphael on 18/02/23.
//

import UIKit

extension Coordinator {
    
//    public var navigationController: UINavigationController
//    public var router: Router
    
//    public init(navigationController: UINavigationController, router: Router) {
//        self.navigationController = navigationController
//        self.router = router
//    }
    
    public func start() {
        // This method should be Overrided
    }
    
    public func present(viewController: UIViewController, animated: Bool) {
        navigationController.present(viewController, animated: animated, completion: nil)
    }
    
    public func dismiss(animated: Bool) {
        navigationController.dismiss(animated: animated, completion: nil)
    }
    
    public func push(viewController: UIViewController, animated: Bool) {
        navigationController.pushViewController(viewController, animated: animated)
    }
    
    public func pop(animated: Bool) {
        navigationController.popViewController(animated: animated)
    }
    
}
