//
//  MainVC.swift
//  task_7
//
//  Created by Жека on 09/10/2023.
//

import UIKit
import SnapKit

class MainVC: UIViewController {
    
    let colorsArray: [UIColor] = [ .blue, .red, .orange, .cyan, .magenta, .systemIndigo, .gray, .brown, .black, .systemGreen ]
    
    var indexColor = 0
    
    var mainView: MainView { view as! MainView }
    
    override func loadView() {
        view = MainView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
    }
    
    func updateColor() {
        let color = colorsArray[indexColor]
        mainView.colorView.backgroundColor = color
        mainView.indexColorLabel.text = "index = \(indexColor)"
    }
    
    @objc  func previousButtonTapped() {
        if indexColor == 0 {
            return
        } else {
            indexColor -= 1
            updateColor()
        }
    }
    
    @objc  func nextButtonTapped() {
        if indexColor == colorsArray.count - 1 {
            return
        } else {
            indexColor += 1
            updateColor()
        }
    }
}
