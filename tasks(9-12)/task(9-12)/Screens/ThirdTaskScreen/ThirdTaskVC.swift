//
//  ThirdTaskScreen.swift
//  task(9-12)
//
//  Created by Жека on 09/10/2023.
//

import UIKit

class ThirdTaskVC: UIViewController {
    
    var thirdTaskView: ThirdTaskView { view as! ThirdTaskView }
    
    override func loadView() {
        view = ThirdTaskView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
