//
//  FirstView.swift
//  task_6
//
//  Created by Gor Zhenya on 05/10/2023.
//

import UIKit

class FirstView: UIView {
    
    var pictureView: UIView = {
        var view = UIView()
        view.heightAnchor.constraint(equalToConstant: 300).isActive = true
        view.widthAnchor.constraint(equalToConstant: 300).isActive = true
        view.backgroundColor = .blue
        let imageView = UIImageView(image: UIImage(named: "pictureBackground"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        view.addSubview(imageView)
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    var hiddenLabel: UILabel = {
        var label = UILabel()
        label.text = "Hidden"
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    var hidePictureButton: UIView = {
        var button = UIButton()
        button.setTitle("Hide", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 30)
        button.backgroundColor = .red
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(FirstVC.hideButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var showPictureButton: UIView = {
        var button = UIButton()
        button.setTitle("Show", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 30)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(FirstVC.showButtonTapped), for: .touchUpInside)

        return button
    }()
    
    lazy var stackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [hidePictureButton, showPictureButton])
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
        self.backgroundColor = .white
        hiddenLabel.isHidden = true
    }
    
    func setupViews(){
        self.addSubview(pictureView)
        self.addSubview(stackView)
        self.addSubview(hiddenLabel)
    }
    
    func setupConstraints(){
        pictureView.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(self)
        }
        
        stackView.snp.makeConstraints { make in
            make.bottom.equalTo(self).inset(16)
            make.left.right.equalTo(self).inset(16)
        }
        hiddenLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(self)
        }
    }
}
