//
//  ThirdVC.swift
//  task_6
//
//  Created by Gor Zhenya on 05/10/2023.
//

import UIKit

class ThirdVC: UIViewController {
    
    var thirdView: ThirdView { view as! ThirdView }
    
    override func loadView() {
        view = ThirdView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @objc func addAlphaButtonTapped(){
        if thirdView.pictureView.alpha <= 0.1{
            return
        } else {
            thirdView.pictureView.alpha -= 0.1
        }
    }
    
    @objc func removeAlphaButtonTapped(){
        if thirdView.pictureView.alpha == 1{
            return
        } else {
            thirdView.pictureView.alpha += 0.1
        }
        
    }
}

