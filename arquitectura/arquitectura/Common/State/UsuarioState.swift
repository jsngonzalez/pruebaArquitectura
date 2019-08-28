//
//  LoginState.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/27/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit
import SwiftyUserDefaults

extension AppState {
    
    var usuario : UsuarioModel {
        set {
            Defaults[.usuario] = newValue.toJSON()
            notify()
        }
        get {
            var user = UsuarioModel(JSON: [:])!
            if (Defaults.hasKey(.usuario)){
                user = UsuarioModel(JSON: Defaults[.usuario])!
            }
            return user
        }
    }
    
}
