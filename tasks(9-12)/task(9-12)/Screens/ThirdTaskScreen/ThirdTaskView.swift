//
//  ThirdTaskView.swift
//  task(9-12)
//
//  Created by Жека on 09/10/2023.
//

import UIKit

class ThirdTaskView: UIView {
    
    let titleArray = ["MY DOCTOR", "MY CERAMANAGER", "MY DIAGNOSIS", "THERAPY PLAN", "REMAINING PILLS", "MY ORDERS"]
    let colorArray: [UIColor] = [.systemGray4, .systemMint, .systemBlue, .blue, .systemGray2, .systemOrange]
   
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let itemsCount: CGFloat = 2
        let padding: CGFloat = 16
        let paddingCount: CGFloat = itemsCount
        layout.minimumLineSpacing = 16
        layout.minimumInteritemSpacing = 16
        let cellWidth = (UIScreen.main.bounds.width - padding * (itemsCount + 1)) / itemsCount
        layout.itemSize = CGSize(width: cellWidth, height: 100)
        layout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .systemGray5.withAlphaComponent(0.1)
        collectionView.register(CardViewCell.self, forCellWithReuseIdentifier: CardViewCell.reuseId)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.allowsFocus = true
        collectionView.isScrollEnabled = true
        
        return collectionView
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
        self.addSubview(collectionView)
    }
    
    func setupConstraints(){
        collectionView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
    }
}

extension ThirdTaskView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardViewCell.reuseId, for: indexPath) as! CardViewCell
        cell.layer.cornerRadius = 7
        let color = colorArray[indexPath.item % colorArray.count]
        let title = titleArray[indexPath.item % titleArray.count]
        
        cell.update(title: title, color: color)
        return cell
    }
    
    
}
