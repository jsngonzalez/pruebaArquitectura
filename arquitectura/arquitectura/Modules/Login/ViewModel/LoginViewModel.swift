//
//  LoginViewModel.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/26/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

class LoginViewModel {
    
    var router: LoginRouter!
    var person:LoginModel!
    var appState:AppState!
    
    
    func loadView() {
        
    }
    
    func login(correo:String,clave:String) {
        
        appState.usuario = UsuarioModel(JSON: ["correo":correo,"clave":clave])!
        router.mostrarHome()
        
    }
}
