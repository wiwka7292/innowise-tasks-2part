//
//  SecondVC.swift
//  task_6
//
//  Created by Gor Zhenya on 05/10/2023.
//

import UIKit

class SecondVC: UIViewController {
    
    var secondView: SecondView { view as! SecondView }
    
    override func loadView() {
        view = SecondView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @objc func addButtonTapped() {
        if secondView.pictureStackView.arrangedSubviews.count == 3 {
            return
        } else {
            let morePictureView: UIView = {
                let view = UIView()
                view.heightAnchor.constraint(equalToConstant: 150).isActive = true
                view.widthAnchor.constraint(equalToConstant: 150).isActive = true
                let imageView = UIImageView(image: UIImage(named: "secondBackground"))
                imageView.clipsToBounds = true
                view.addSubview(imageView)
                imageView.layer.borderWidth = 1
                imageView.layer.borderColor = UIColor.black.cgColor
                return view
            }()
            secondView.pictureStackView.addArrangedSubview(morePictureView)
        }
    }

    
    @objc func removeButtonTapped(){
        guard let lastPictureView = secondView.pictureStackView.arrangedSubviews.last as? UIView else {
            return
        }
        
        // Удаляем последнюю картинку из стека
        lastPictureView.removeFromSuperview()
    }
}
