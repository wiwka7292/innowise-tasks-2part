//
//  FirstVC.swift
//  task_6
//
//  Created by Gor Zhenya on 05/10/2023.
//

import UIKit

class FirstVC: UIViewController {
    
    var firstView: FirstView { view as! FirstView }
    
    override func loadView() {
        view = FirstView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @objc func hideButtonTapped(){
        firstView.pictureView.isHidden = true
        firstView.hiddenLabel.isHidden = false
    }
    
    @objc func showButtonTapped(){
        firstView.pictureView.isHidden = false
        firstView.hiddenLabel.isHidden = true
    }
}
