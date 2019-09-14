//
//  Created by jsn with love for you.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

class Cell___VARIABLE_moduleName___: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet var lbl1: UILabel!
    @IBOutlet var img1: UIImageView!

    // MARK: - ViewModel
    var viewModel : ___VARIABLE_moduleName___ViewModel!

    // MARK: - Variable
    var index: Int!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(viewModel vm:___VARIABLE_moduleName___ViewModel, indexPath: IndexPath){

        viewModel = vm
        index = indexPath.row

        initView()
        
    }

    func initView(){

    }
    

}