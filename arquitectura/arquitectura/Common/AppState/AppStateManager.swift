//
//  AppState+extension.swift
//  arquitectura
//
//  Created by MacBook on 8/28/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit
import SwiftyUserDefaults

extension DefaultsKeys {
    static let usuario = DefaultsKey<[String: Any]>("obj_usuario", defaultValue: [:])
}

extension AppState {
    
    private struct property {
        static var login:Bool = false
    }
    
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
