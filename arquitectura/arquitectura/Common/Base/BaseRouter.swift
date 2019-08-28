//
//  BaseRouter.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/27/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

struct storyboard {
}

class BaseRouter {
    
    class func nav() -> UINavigationController{
        let nav = UINib(nibName: "NavigationController", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UINavigationController
        nav.navigationBar.isOpaque = true
        return nav
    }
    
    class func instance<T : UIViewController>(_ storyboard:String = "", viewController viewControllerClass: T.Type) -> T {
        
        let storyboardID = "\(T.self)"
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        
        guard let vc = storyboard.instantiateViewController(withIdentifier: storyboardID) as? T else {
            fatalError("ViewController with identifier \(storyboardID), not found in \(storyboard) Storyboard")
        }
        
        return vc
        
    }

}
