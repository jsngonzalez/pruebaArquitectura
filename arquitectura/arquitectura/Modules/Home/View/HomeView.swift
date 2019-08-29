//
//  Created by jsn with love for you.
//  Copyright © 2019 hidesoft. All rights reserved.
//

import UIKit

class HomeView: BaseView {

    // MARK: - IBOutlets
    


    // MARK: - ViewModel
    var viewModel: HomeViewModel!
    


    // MARK: - Fucntions
    override func viewDidLoad() {
        super.viewDidLoad()

        //observer of AppState changes
        //viewModel.appState.observer(observer: self)
        initView()
        
    }
    
    
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
 // MARK: - ObserverDelegate
extension HomeView: ObserverState {
    
    func newState() {
        initView()
    }
}
*/
    



