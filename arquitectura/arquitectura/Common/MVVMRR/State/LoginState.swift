//
//  LoginState.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/28/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit


extension AppState {
    
    struct property {
        static var login:Bool = false
    }
    
    var login:Bool {
        get {
            return property.login
        }
        set(newValue) {
            property.login = newValue
            notify()
        }
    }
    
}
