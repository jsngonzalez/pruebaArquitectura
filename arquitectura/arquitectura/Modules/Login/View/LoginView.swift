//
//  LoginView.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/26/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

class LoginView: BaseView {
    

    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtClave: UITextField!
    @IBOutlet weak var btnIngreso: UIButton!
    
    
    var viewModel: LoginViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.appState.observer(observer: self)
        initView()
        
    }
    
    
    func initView(){
        txtCorreo.text = viewModel.appState.usuario.correo
        txtClave.text = viewModel.appState.usuario.clave
        
    }
    
    @IBAction func showNextScreen(_ sender: Any) {
        viewModel.login(correo: txtCorreo.text!, clave: txtClave.text!)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LoginView: ObserverState {
    
    func newState() {
        print(viewModel.appState.usuario.toJSON())
        print("Se actualiza el modelo")
        initView()
        
    }
}
    



