//
//  ViewController.swift
//  task(9-12)
//
//  Created by Жека on 09/10/2023.
//

import UIKit
import SnapKit

class FirstTaskVC: UIViewController {

    var firstTaskView: FirstTaskView { view as! FirstTaskView }
    
    override func loadView() {
        view = FirstTaskView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

