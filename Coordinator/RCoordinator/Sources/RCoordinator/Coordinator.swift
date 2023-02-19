import UIKit

public protocol Coordinator {
    
    var navigationController: UINavigationController { get set }
    
    func start()
    func present(viewController: UIViewController, animated: Bool)
    func dismiss(animated: Bool)
    func push(viewController: UIViewController, animated: Bool)
    func pop(animated: Bool)
}

extension Coordinator {
    
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
