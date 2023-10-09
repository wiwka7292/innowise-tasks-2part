//
//  SecondUserViewCell.swift
//  task(9-12)
//
//  Created by Жека on 09/10/2023.
//

import UIKit

class SecondUserViewCell: UITableViewCell {
    
    static let reuseId = "UserViewCell"
    
    var fakeUsers: User?
    
    let imageUrlString = "https://image.cnbcfm.com/api/v1/image/105773423-1551716977818rtx6p9yw.jpg?v=1551717428&w=700&h=700"
    var imageUrl: URL?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
        
        imageUrl = URL(string: imageUrlString)

        if let url = imageUrl {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data, let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self.userAvatarView.image = image
                    }
                }
            }.resume()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var initialsUser: UILabel = {
        var label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    var ageUserLabel: UILabel = {
        var label = UILabel()
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    var descriptionLabel: UILabel = {
        var label = UILabel()
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 2
        return label
    }()
    
    var sexUser: UILabel = {
        var label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
        return label
    }()
    
    lazy var stackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [initialsUser, ageUserLabel, descriptionLabel])
        stack.axis = . vertical
        stack.spacing = 2
        return stack
    }()
    
    var userAvatarView: UIImageView = {
        var image = UIImageView()
        image.heightAnchor.constraint(equalToConstant: 40).isActive = true
        image.widthAnchor.constraint(equalToConstant: 40).isActive = true
        return image
    }()
    
    
    func setupViews(){
        contentView.addSubview(userAvatarView)
        contentView.addSubview(stackView)
        contentView.addSubview(sexUser)
    }
    
    func setupConstraints(){
        
        userAvatarView.snp.makeConstraints { make in
            make.left.equalTo(contentView).inset(16)
            make.top.equalTo(contentView).inset(16)
        }
        stackView.snp.makeConstraints { make in
            make.left.equalTo(userAvatarView.snp.right).offset(16)
            make.top.equalTo(contentView).inset(16)
            make.right.equalTo(contentView).inset(32)
        }
        
        sexUser.snp.makeConstraints { make in
            make.top.equalTo(contentView).inset(16)
            make.right.equalTo(contentView).inset(16)
        }
    }
    
    func update(_ fakeUsers: User){
        self.fakeUsers = fakeUsers
        initialsUser.text = fakeUsers.firstName + " " + fakeUsers.lastName
        ageUserLabel.text = "Age: \(fakeUsers.age)"
        sexUser.text = fakeUsers.sex
        descriptionLabel.text = fakeUsers.description
    }
}
