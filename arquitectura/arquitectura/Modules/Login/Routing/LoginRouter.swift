//
//  LoginRouter.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/26/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import Foundation
import UIKit


class LoginRouter {
    
    private var nav : UINavigationController!
    
    static func getController() -> UINavigationController {
        
        let viewController = LoginView()
        let router = LoginRouter()
        let viewModel = LoginViewModel()
        
        viewController.viewModel = viewModel
        
        viewModel.router = router
        viewModel.view = viewController
        
        router.nav =  UINavigationController.init(rootViewController: viewController)
        
        return router.nav
        
    }
    
    func showPersonsList() {
        let vc = LoginRouter.getController()
        self.nav.pushViewController(vc, animated: true)
    }
}
