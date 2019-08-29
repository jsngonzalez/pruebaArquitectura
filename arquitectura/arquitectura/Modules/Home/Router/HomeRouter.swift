//
//  Created by jsn with love for you.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import Foundation
import UIKit

class HomeRouter:BaseRouting {
    
    
    static func getController() -> HomeView {
        
        let view = instance(HomeView.self)
        
        let router = HomeRouter()
        let viewModel = HomeViewModel()
        
        router.view = view
        view.viewModel = viewModel
        viewModel.router = router
        
        return router.view as! HomeView
        
    }
    
    

    /*
     // MARK: - Functions for navigation
     // optional functions:
     //self.push(viewController: UIViewController)
     
    func finish() {
        //let vc = HomeRouter.getController()
        //self.push(viewController: vc)
    }
     */
}
