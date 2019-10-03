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
    override func viewDidLoad() {
        super.viewDidLoad()

        initView()

        //observer of AppStore changes
        //observer()
    }
    
    // MARK: - observer of AppStore changes
    /*func observer(){
        viewModel.appStore.observer(self, whenNewStore: {
            self.reloadView()
        }, whenNewState: { state in
            self.validarEstado(state)
        })
    }*/
    
    // MARK: - Show Alert when exist error
    /*func validarEstado(_ state:StateModel){
        
        switch state.type {
        case .error_servicio:
            showAlert(state.mensaje)
        case .mostrar_cargando:
             showLoading()
        case .ocultar_cargando:
             hideLoading()
        default:
            return
        }
    }*/

    // MARK: - When the app store is update
    func reloadView(){
        
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
    
/*
// MARK: - UITableViewDelegate
extension ___VARIABLE_moduleName___View:UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = viewModel.cell(tableView, indexPath: indexPath)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return viewModel.heightCell(indexPath: indexPath)
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.container.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.didSelectRowAt(indexPath)
    }
    
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let v = UIView()
        v.backgroundColor = UIColor.clear
        return v
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return viewModel.tableView(tableView, viewForHeaderInSection: section)
    }
    
}
*/




