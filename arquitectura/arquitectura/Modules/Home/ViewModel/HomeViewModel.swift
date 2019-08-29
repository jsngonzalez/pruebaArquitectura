//
//  HomeViewModel.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/28/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

class HomeViewModel: BaseViewModel {

    var router: HomeRouting!
    
    func cerrarSesion() {
        appState.usuario = UsuarioModel(JSON: [:])!
        appState.login = false
    }
    
    func cerrar(){
        router.cerrar()
    }
}
