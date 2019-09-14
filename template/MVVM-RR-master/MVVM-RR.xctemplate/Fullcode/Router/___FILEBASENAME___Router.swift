//
//  Created by jsn with love for you.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import Foundation
import UIKit

class ___VARIABLE_moduleName___Router:BaseRouting {
    
    
    static func getController() -> ___VARIABLE_moduleName___View {
        
        let view = instance(___VARIABLE_moduleName___View.self)
        
        let router = ___VARIABLE_moduleName___Router()
        let viewModel = ___VARIABLE_moduleName___ViewModel()
        
        router.view = view
        view.viewModel = viewModel
        viewModel.router = router
        
        return router.view as! ___VARIABLE_moduleName___View
        
    }
    
     // MARK: - Functions for navigation
     // optional navigation functions:
     // self.push(viewController: UIViewController)

    func atras() {
        view.navigationController?.popViewController(animated: true)
    }

    func continuar() {
        let vc = ___VARIABLE_moduleName___Router.getController()
        self.push(viewController: vc)
    }
     
}
