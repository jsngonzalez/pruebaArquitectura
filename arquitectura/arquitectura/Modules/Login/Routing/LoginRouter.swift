//
//  LoginRouter.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/26/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import Foundation
import UIKit

class LoginRouter:BaseRouting {
    
    
    static func getController() -> LoginView {
        
        let view = instance(LoginView.self)
        
        let router = LoginRouter()
        let viewModel = LoginViewModel()
        
        router.view = view
        view.viewModel = viewModel
        viewModel.router = router
        
        return router.view as! LoginView
        
    }
    
    
    func finish() {
        let vc = HomeRouting.getController()
        self.push(viewController: vc)
    }
}
