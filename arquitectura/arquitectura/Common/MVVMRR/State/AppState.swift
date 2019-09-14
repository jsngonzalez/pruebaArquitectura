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
    func newState(state:AppStateType)
}

enum AppStateType {
    case update
    case showAlert
    case internetConnectionError
}

class AppState {
    
    private var _observerNotification: AnyObject?
    private var _observer: ObserverState?
    private var _error = ""
    
    
    var error:String {
        get {
            return _error
        }
        set(newValue) {
            _error = newValue
            notify(withState: .showAlert)
        }
    }
    
    
    func observer(observer : ObserverState){
        _observer = observer
        _observerNotification = NotificationCenter.default.addObserver( forName: .appState_newState, object: nil, queue: nil) { notification in
            
            let userInfo = notification.userInfo
            let state =  userInfo!["state"] as! AppStateType
            observer.newState(state: state)
        }
    }
    
    func unsubscribe() {
        if let noti = _observerNotification, let _ = _observer {
            NotificationCenter.default.removeObserver(noti)
            self._observerNotification = nil
            self._observer = nil
        }
    }
    
    func notify(withState state:AppStateType = .update){
        DispatchQueue.main.async {
            
            switch state {
                case .update:
                    
                    let noti = ["state":state]
                    NotificationCenter.default.post(name: .appState_newState, object: nil, userInfo: noti)
                
                case .showAlert:
                    
                    if let observer = self._observer {
                        observer.newState(state: .showAlert)
                    }
                
                case .internetConnectionError:
                    
                    if let observer = self._observer {
                        observer.newState(state: .internetConnectionError)
                    }
            }
        }
    }
    
    deinit {
        unsubscribe()
    }

}
