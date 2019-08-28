//
//  AppState.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/27/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import ObjectMapper
import SwiftyUserDefaults

protocol ObserverState {
    func newState()
}

class AppState {
    
    private var observerArray = [ObserverState]()
    
    
    func observer(observer : ObserverState){
        observerArray.append(observer)
    }
    
    func notify(){
        for observer in observerArray {
            observer.newState()
        }
    }

}
