//
//  LoginModel.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/26/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import ObjectMapper

class LoginModel: Mappable {
    var correo = ""
    var clave = ""
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        correo <- map["correo"]
        clave <- map["clave"]
    }
}

