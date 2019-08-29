//
//  ViewHome.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/28/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

class HomeView: BaseView {

    
    @IBOutlet var lblCorreo: UILabel!
    @IBOutlet var lblClave: UILabel!
    
    var viewModel: HomeViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.appState.observer(observer: self)

        // Do any additional setup after loading the view.
        initView()
    }
    
    func initView(){
        lblCorreo.text = viewModel.appState.usuario.correo
        lblClave.text = viewModel.appState.usuario.clave
        
        
    }
    
    @IBAction func cerrarSesion(_ sender: Any) {
        viewModel.cerrarSesion()
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


extension HomeView: ObserverState {
    
    func newState() {
        print(viewModel.appState.usuario.toJSON())
        print("Se actualiza el modelo")
        initView()
        
        if !viewModel.appState.login {
            let alert = UIAlertController(title: "Alert", message: "Se cerro la sesion", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                self.viewModel.cerrar()
            }))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
}
