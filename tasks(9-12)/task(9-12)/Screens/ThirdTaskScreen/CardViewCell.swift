//
//  CardViewCell.swift
//  task(9-12)
//
//  Created by Жека on 09/10/2023.
//

import UIKit

class CardViewCell: UICollectionViewCell {
    
    static let reuseId = "CardViewCell"
    
    var iconView: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(systemName: "list.bullet.rectangle")
        image.heightAnchor.constraint(equalToConstant: 90).isActive = true
        image.widthAnchor.constraint(equalToConstant: 90).isActive = true
        image.tintColor = .white.withAlphaComponent(0.2)
        return image
    }()
    
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "MY DOCTOR"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
        self.backgroundColor = .systemIndigo
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        self.addSubview(iconView)
        self.addSubview(titleLabel)
    }
    
    func setupConstraints(){
        iconView.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.left.equalTo(self).inset(10)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(10)
            make.bottom.equalTo(iconView.snp.bottom)
        }
        
    }
    
    func update(title: String, color: UIColor) {
        titleLabel.text = title
        backgroundColor = color
    }
}
