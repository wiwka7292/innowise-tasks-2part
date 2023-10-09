//
//  MainTabVC.swift
//  task(9-12)
//
//  Created by Жека on 09/10/2023.
//


import UIKit

final class MainTabVC: UITabBarController {
    
    private var firstTaskVC: FirstTaskVC = {
        let controller = FirstTaskVC()
        let selectedIamge = UIImage(systemName: "list.bullet.clipboard")
        let tabItem = UITabBarItem(title: "First list", image: selectedIamge, selectedImage: selectedIamge)
        controller.tabBarItem = tabItem
        return controller
    }()
    
    private var secondTaskVC: SecondTaskVC = {
        let controller = SecondTaskVC()
        let selectedIamge = UIImage(systemName: "list.bullet.clipboard")
        let tabItem = UITabBarItem(title: "Second list", image: selectedIamge, selectedImage: selectedIamge)
        controller.tabBarItem = tabItem
        return controller
    }()
    
    private var thirdTaskVC: ThirdTaskVC = {
        let controller = ThirdTaskVC()
        let selectedIamge = UIImage(systemName: "list.bullet.clipboard")
        let tabItem = UITabBarItem(title: "Third list", image: selectedIamge, selectedImage: selectedIamge)
        controller.tabBarItem = tabItem
        return controller
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        selectedIndex = 0
    }
    
    private func setup(){
        
        let firstTaskNC = UINavigationController(rootViewController: firstTaskVC)
        let secondTaskNC = UINavigationController(rootViewController: secondTaskVC)
        let thirdTaskNC = UINavigationController(rootViewController: thirdTaskVC)
        viewControllers = [firstTaskNC, secondTaskNC, thirdTaskNC]
        tabBar.tintColor = .systemIndigo
        tabBar.unselectedItemTintColor = .gray
    }
}

