//
//  SecondTaskVC.swift
//  task(9-12)
//
//  Created by Жека on 09/10/2023.
//

import UIKit

class SecondTaskVC: UIViewController {
    
    var secondTaskView: SecondTaskView { view as! SecondTaskView }
    
    override func loadView() {
        view = SecondTaskView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
