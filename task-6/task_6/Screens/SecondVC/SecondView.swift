//
//  SecondView.swift
//  task_6
//
//  Created by Gor Zhenya on 05/10/2023.
//

import UIKit

class SecondView: UIView {
    
    var pictureView: UIView = {
        var view = UIView()
        view.heightAnchor.constraint(equalToConstant: 150).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        let imageView = UIImageView(image: UIImage(named: "secondBackground"))
        imageView.clipsToBounds = true
        view.addSubview(imageView)
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    var hiddenLabel: UILabel = {
        var label = UILabel()
        label.text = "Hidden"
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    var addPictureButton: UIView = {
        var button = UIButton()
        button.setTitle("Add", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 30)
        button.backgroundColor = .red
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(SecondVC.addButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var removePictureButton: UIView = {
        var button = UIButton()
        button.setTitle("Remove", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 30)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(SecondVC.removeButtonTapped), for: .touchUpInside)
        
        return button
    }()
    
    lazy var stackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [addPictureButton, removePictureButton])
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    lazy var pictureStackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [pictureView])
        stack.axis = .horizontal
     
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
        self.addSubview(pictureStackView)
        self.addSubview(stackView)
        self.addSubview(hiddenLabel)
        
    }
    
    func setupConstraints(){
        pictureStackView.snp.makeConstraints { make in
            make.centerY.centerX.equalTo(self)
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

