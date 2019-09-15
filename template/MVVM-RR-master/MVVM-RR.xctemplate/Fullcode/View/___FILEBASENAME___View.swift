//
//  Created by jsn with love for you.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

class ___VARIABLE_moduleName___View: BaseView {

    // MARK: - IBOutlets
    //@IBOutlet weak var table: UITableView!


// MARK: - Cell Types
/*
    struct CellType {
        static let cell1 = "Cell1"
        static let cell2 = "Cell2"
    }
*/

    // MARK: - ViewModel
    var viewModel: ___VARIABLE_moduleName___ViewModel!
    


    // MARK: - Fucntions
    override func viewDidLoad() {
        super.viewDidLoad()

        initView()

        //observer of AppStore changes
        //observer()
    }
    
    // MARK: - observer of AppStore changes
    /*func observer(){
        viewModel.appStore.observer(self, whenNewState: {
            self.reloadView()
        }, whenError: { error in
            self.validarError(error)
        })
    }*/

    
    // MARK: - Show Alert when exist error
    func validarError(_ error:ErrorModel){
        
    }
    
    // MARK: - init view controller
    func initView(){
        
    }

    func reloadView(){
        
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
    



