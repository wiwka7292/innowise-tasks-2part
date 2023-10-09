//
//  MainVC.swift
//  task_6
//
//  Created by Gor Zhenya on 05/10/2023.
//

import UIKit

class MainVC: UIViewController {

    var mainView: MainView { view as! MainView }
    
    override func loadView() {
        view = MainView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @objc func firstViewButtonTapped(){
        let firstVC = FirstVC()
        self.navigationController?.pushViewController(firstVC, animated: true)
    }
    
    @objc func secondViewButtonTapped(){
        let secondVC = SecondVC()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @objc func thirdViewButtonTapped(){
        let thirdVC = ThirdVC()
        self.navigationController?.pushViewController(thirdVC, animated: true)
    }


}

