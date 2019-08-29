//
//  UsuarioModel.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/27/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit
import ObjectMapper

class UsuarioModel: BaseModel, Mappable {
    var correo = ""
    var clave = ""
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        correo <- map["correo"]
        clave <- map["clave"]
    }
}
