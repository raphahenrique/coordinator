import UIKit

public protocol Coordinator {
    
    var navigationController: UINavigationController { get set }
    var router: Router? { get set }
    
    func start()
    func present(viewController: UIViewController, animated: Bool)
    func dismiss(animated: Bool)
    func push(viewController: UIViewController, animated: Bool)
    func pop(animated: Bool)
}
