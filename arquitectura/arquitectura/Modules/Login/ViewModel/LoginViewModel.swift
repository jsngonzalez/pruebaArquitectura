//
//  LoginViewModel.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/26/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

class LoginViewModel {

    weak var view:LoginViewProtocol!
    var router: LoginRouter!
    var person:LoginModel!
    
    func loadView() {
        
        //self.person = Person(name: "Alvaro", age: 22, height: 1.79)
        self.view.didLoadView()
        
    }
    
    func showNextScreen() {
        //self.router.showPersonsList()
    }
}
