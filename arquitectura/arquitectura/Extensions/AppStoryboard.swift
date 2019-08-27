//
//  AppStoryboard.swift
//  ideas-claro
//
//  Created by IMAC on 11/8/18.
//  Copyright © 2018 wigilabs. All rights reserved.
//

import Foundation
import UIKit

enum AppStoryboard : String {
    
    case
    Login,
    Rutas,
    Servicio,
    ServicioActivo,
    Chatbot,
    BotMenu,
    BotContent,
    NuevaAlerta,
    NuevoEstado,
    AdjuntarArchivos,
    CargandoServicioActivo,
    CompartirServicio
    
    var instance : UIStoryboard {
        
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
    func viewController<T : UIViewController>(viewControllerClass : T.Type) -> T {
        
        let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
        print("SI")
        guard let scene = instance.instantiateViewController(withIdentifier: storyboardID) as? T else {
            fatalError("ViewController with identifier \(storyboardID), not found in \(self.rawValue) Storyboard")
        }
        
        return scene
    }
    
    func initialViewController() -> UIViewController? {
        
        return instance.instantiateInitialViewController()
    }
}

extension UIViewController {
    
    // Not using static as it wont be possible to override to provide custom storyboardID then
    class var storyboardID : String {
        
        return "\(self)"
        
        // return String(reflecting: self).components(separatedBy: ".").last!
        // return "\(type(of:self))".components(separatedBy: ".").first!
    }
    
    static func instance(fromAppStoryboard appStoryboard: AppStoryboard) -> Self {
        
        return appStoryboard.viewController(viewControllerClass: self)
    }
}
