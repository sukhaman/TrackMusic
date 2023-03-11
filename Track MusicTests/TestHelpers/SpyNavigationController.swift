//
//  SpyNavigationController.swift
//  Track MusicTests
//
//  Created by Sukhaman Singh on 3/11/23.
//

import UIKit

class SpyNavigationController: UINavigationController {
    var pushViewController: UIViewController?
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        pushViewController = viewController
        super.pushViewController(viewController, animated: animated)
    }
    
    override func popToRootViewController(animated: Bool) -> [UIViewController]? {
        super.popToRootViewController(animated: animated)
        return self.viewControllers
    }
    
    override func popViewController(animated: Bool) -> UIViewController? {
        pushViewController = nil
        super.popViewController(animated: animated)
        return self.topViewController
    }
    
    override func didMove(toParent parent: UIViewController?) {
        pushViewController = parent
    }
}
