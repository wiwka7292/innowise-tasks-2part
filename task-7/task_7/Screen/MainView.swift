//
//  MainView.swift
//  task_7
//
//  Created by Жека on 09/10/2023.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    var nextButton: UIButton = {
        var button = UIButton()
        button.setTitle("Next", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 15
        button.titleLabel?.textColor = .white
        button.contentEdgeInsets = UIEdgeInsets(top: 5, left: 15, bottom: 5, right: 15)
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.addTarget(self, action: #selector(MainVC.nextButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var previousButton: UIButton = {
        var button = UIButton()
        button.setTitle("Previous", for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 15
        button.titleLabel?.textColor = .white
        button.contentEdgeInsets = UIEdgeInsets(top: 5, left: 15, bottom: 5, right: 15)
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.addTarget(self, action: #selector(MainVC.previousButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var indexColorLabel: UILabel = {
        var label = UILabel()
        label.text = "1"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
     var colorView: UIView = {
        let view = UIView()
        view.widthAnchor.constraint(equalToConstant: 300).isActive = true
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        return view
    }()
    
    lazy var stackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [previousButton, indexColorLabel, nextButton])
        stack.axis = .horizontal
        stack.spacing = 10
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
    }
    
    func setupViews(){
        self.addSubview(colorView)
        self.addSubview(stackView)
    }
    
    func setupConstraints(){
        colorView.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(self)
        }
        
        stackView.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(colorView.snp.bottom).offset(50)
        }
    }
    
}

