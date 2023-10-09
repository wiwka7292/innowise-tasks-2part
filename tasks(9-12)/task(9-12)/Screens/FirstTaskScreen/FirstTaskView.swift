//
//  FirstTaskView.swift
//  task(9-12)
//
//  Created by Жека on 09/10/2023.
//

import UIKit

class FirstTaskView: UIView {
    
    var fakeUsers: [User] = UserGenerator.generateFakeUsers(count: 30)
    
    lazy var tableView: UITableView = {
        var table = UITableView()
        table.dataSource = self
        table.delegate = self
        table.register(FirstUserViewCell.self, forCellReuseIdentifier: FirstUserViewCell.reuseId)
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        self.addSubview(tableView)
    }
    
    func setupConstraints(){
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
    }
    
    func updateUser(fakeUsers: [User]){
        self.fakeUsers = fakeUsers
        tableView.reloadData()
    }
}

extension FirstTaskView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fakeUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FirstUserViewCell.reuseId, for: indexPath) as! FirstUserViewCell
        let user = fakeUsers[indexPath.row]
        cell.update(user)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
    
    
}
