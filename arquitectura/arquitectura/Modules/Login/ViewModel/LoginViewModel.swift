//
//  LoginViewModel.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/26/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

class LoginViewModel : BaseViewModel {
    
    var router: LoginRouter!
    
    func login(correo:String,clave:String) {
        appState.usuario = UsuarioModel(JSON: ["correo":correo,"clave":clave])!
        appState.login = true
        //appState.unsubscribe()
        router.finish()
    }
    
    
    
}
