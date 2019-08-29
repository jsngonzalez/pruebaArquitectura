//
//  BaseRouting.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/28/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

class BaseRouting {
    private var _viewController : UIViewController!
    
    
    var view: UIViewController {
        get{
            return _viewController
        }
        set {
            _viewController = newValue
        }
        
    }
    
    
    class func startApp() {
        let vc = LoginRouter.getController()
        let nav = UINib(nibName: "NavigationController", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UINavigationController
        nav.navigationBar.isOpaque = true
        nav.viewControllers = [vc]
        
        
        DispatchQueue.main.async {
            let appDelegate = UIApplication.shared.delegate as? AppDelegate
            appDelegate?.window?.rootViewController = nav
        }
    }
    
    class func instance<T : UIViewController>(_ viewControllerClass: T.Type) -> T {
        
        let storyboardID = "\(T.self)"
        let storyboard = UIStoryboard(name: storyboardID, bundle: nil)
        
        guard let vc = storyboard.instantiateViewController(withIdentifier: storyboardID) as? T else {
            fatalError("ViewController with identifier \(storyboardID), not found in \(storyboard) Storyboard")
        }
        
        return vc
        
    }
    
    
}
