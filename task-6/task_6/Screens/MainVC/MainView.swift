//
//  MainView.swift
//  task_6
//
//  Created by Gor Zhenya on 05/10/2023.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    var firstViewButton: UIButton = {
        var button = UIButton()
        button.setTitle("First view", for: .normal)
        button.backgroundColor = .systemRed
        button.layer.cornerRadius = 15
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 30)
        button.addTarget(self, action: #selector(MainVC.firstViewButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var secondViewButton: UIButton = {
        var button = UIButton()
        button.setTitle("Second view", for: .normal)
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 15
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 30)
        button.addTarget(self, action: #selector(MainVC.secondViewButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var thirdViewButton: UIButton = {
        var button = UIButton()
        button.setTitle("Third view", for: .normal)
        button.backgroundColor = .systemIndigo
        button.layer.cornerRadius = 15
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 30)
        button.addTarget(self, action: #selector(MainVC.thirdViewButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var stackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [firstViewButton, secondViewButton, thirdViewButton])
        stack.axis = .vertical
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
        self.addSubview(stackView)
    }
    
    func setupConstraints(){
        stackView.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(self)
        }
    }
}
