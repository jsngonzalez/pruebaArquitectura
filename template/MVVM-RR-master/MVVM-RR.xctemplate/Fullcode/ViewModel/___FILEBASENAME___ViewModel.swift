//
//  Created by jsn with love for you.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit
import ObjectMapper

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

    struct CellType {
        static let cell = "Cell"
    }

    func cell(_ tableView: UITableView, indexPath: IndexPath) ->  UITableViewCell {
        
        let item = appStore.store.container[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CellType.cell, for: indexPath) as! UITableViewCell
        
        if  item.cell == CellType.cell {
            cell.setup(viewModel: self, indexPath: indexPath)
        }
        
        return cell
    }
    
    func heightCell(indexPath: IndexPath) -> CGFloat {
        
        //let item = appStore.store.container[indexPath.row]
        
        if item.cell == CellType.cell{
            return 10
        }else{
            return 0
        }
    }

    func didSelectRowAt(_ tableView: UITableView, row: Int, inController cv:UIViewController) {
        
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CellType.header)
        return cell
    }
    
    
    */

}
