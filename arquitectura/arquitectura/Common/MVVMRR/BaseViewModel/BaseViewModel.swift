//
//  BaseViewModel.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/28/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

class BaseViewModel {
    
    var appState = AppState()

    //MARK: -- Closure Collection
    var showAlert: ((_ message:String) -> ())?
    var isLoading: (() -> ())?
    var internetConnectionError: (() -> ())?
    
}
