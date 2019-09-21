//
//  Created by jsn with love for you.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit
import ObjectMapper

// MARK: - Cell Types
/*
struct Cell___VARIABLE_moduleName___Type {
    static let header = "Header"
    static let cell = "Cell"
}*/


class ___VARIABLE_moduleName___ViewModel : BaseViewModel {
    
    // MARK: - Router
    var router: ___VARIABLE_moduleName___Router!

    func loadData() {
        
    }

    func atras() {
        router.atras()
    }

    func continuar() {
        router.continuar()
    }
    
    /*
    // MARK: - TableviewDelegate
    // You can use this code for create datatable delegate

    func cell(_ tableView: UITableView, indexPath: IndexPath) ->  UITableViewCell {
        
        let item = appStore.store.container[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell___VARIABLE_moduleName___Type.cell, for: indexPath) as! UITableViewCell
        
        if  item.cell == Cell___VARIABLE_moduleName___Type.cell {
            cell.setup(viewModel: self, indexPath: indexPath)
        }
        
        return cell
    }
    
    func heightCell(indexPath: IndexPath) -> CGFloat {
        
        //let item = appStore.store.container[indexPath.row]
        
        if item.cell == Cell___VARIABLE_moduleName___Type.cell{
            return 10
        }else{
            return 0
        }
    }

    func didSelectRowAt(_ indexPath: IndexPath) {
        
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell___VARIABLE_moduleName___Type.header)
        return cell
    }
    
    
    */

}
