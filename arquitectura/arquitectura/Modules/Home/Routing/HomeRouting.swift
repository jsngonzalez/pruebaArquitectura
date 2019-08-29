//
//  HomeRouting.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/28/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

class HomeRouting: BaseRouting {

    static func getController() -> HomeView {
        
        let view = instance(HomeView.self)
        
        let router = HomeRouting()
        let viewModel = HomeViewModel()
        
        router.view = view
        view.viewModel = viewModel
        viewModel.router = router
        
        return router.view as! HomeView
        
    }
    
    func cerrar(){
        BaseRouting.startApp()
    }
    
    
}
