//
//  LoginView.swift
//  arquitectura
//
//  Created by Jeisson Gonzalez on 8/26/19.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

//MARK: - ViewModel communication
protocol LoginViewProtocol : class {
    func didLoadView()
}

class LoginView: UIViewController {

    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtClave: UITextField!
    @IBOutlet weak var btnIngreso: UIButton!
    
    
    var viewModel: LoginViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

extension LoginView : LoginViewProtocol {
    
    func didLoadView() {
        
    }
}
