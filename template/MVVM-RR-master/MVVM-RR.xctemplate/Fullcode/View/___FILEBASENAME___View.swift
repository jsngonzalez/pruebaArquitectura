//
//  Created by jsn with love for you.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

class ___VARIABLE_moduleName___View: BaseView {

    // MARK: - IBOutlets
    //@IBOutlet weak var table: UITableView!


    // MARK: - ViewModel
    var viewModel: ___VARIABLE_moduleName___ViewModel!
    


    // MARK: - Fucntions
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if self.isMovingFromParent || isBeingDismissed {
            viewModel.appStore.unsubscribe(self)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        initView()

        //observer of AppStore changes
        //observer()
    }
    
    // MARK: - observer of AppStore changes
    /*func observer(){
        viewModel.appStore.observer(self) { (state) in
            if state == .update {
                self.initView()
            }else if state == .alert {
                self.mostrarMensaje()
            }
        }
    }*/

    
    // MARK: - Show Alert when exist error
    func mostrarMensaje(){

    }
    
    // MARK: - init view controller
    func initView(){
        
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
    



