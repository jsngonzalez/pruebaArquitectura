//
//  Created by jsn with love for you.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import ObjectMapper

// MARK: - ObjectMapper dependence but you can use Codable

class HomeModel: Mappable {
    //var correo = ""
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        //correo <- map["correo"]
    }
}

