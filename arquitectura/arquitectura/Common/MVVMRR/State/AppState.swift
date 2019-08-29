//
//  AppState.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/27/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import ObjectMapper
import SwiftyUserDefaults

extension Notification.Name {
    static let appState_newState = Notification.Name("appState_newState")
}

protocol ObserverState {
    func newState()
}

class AppState {
    
    private var _observer: AnyObject?
    
    func observer(observer : ObserverState){
        _observer = NotificationCenter.default.addObserver( forName: .appState_newState, object: nil, queue: nil) { notification in
            observer.newState()
        }
    }
    
    func unsubscribe() {
        if let observer = _observer {
            NotificationCenter.default.removeObserver(observer)
            self._observer = nil
        }
    }
    
    func notify(){
        DispatchQueue.main.async {
            NotificationCenter.default.post(name: .appState_newState, object: nil)
        }
    }
    
    deinit {
        unsubscribe()
    }

}
