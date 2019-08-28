//
//  LoginRouter.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/26/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import Foundation
import UIKit
import SwiftyUserDefaults

extension storyboard {
    static let Login = "Login"
}


class LoginRouter:BaseRouter {
    
    private var viewController : LoginView!
    
    static func getController() -> LoginView {
        
        let viewController = instance(storyboard.Login, viewController: LoginView.self)
        
        let router = LoginRouter()
        let viewModel = LoginViewModel()
        let appState = AppState()
        
        viewModel.router = router
        viewModel.appState = appState
        
        viewController.viewModel = viewModel
        router.viewController =  viewController
        return router.viewController
        
    }
    
    func mostrarHome() {
        let vc = LoginRouter.getController()
        self.viewController.navigationController?.pushViewController(vc, animated: true)
    }
}
