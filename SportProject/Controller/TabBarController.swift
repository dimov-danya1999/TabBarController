//
//  TabBarController.swift
//  SportProject
//
//  Created by mac on 08.07.2022.
//

import UIKit

enum Tabs: Int {
    case ovverview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        configure()
    }
    
    private func configure() {
        tabBar.tintColor = Resourse.Color.activ
        tabBar.barTintColor = Resourse.Color.inactiv
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resourse.Color.seporator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpCoomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownoloadsViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vc1.title = "Главная"
        vc2.title = "Cмотреть"
        vc3.title = "Поиск"
        vc4.title = "Cкачать"
        
        tabBar.tintColor = .label
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
    }
    
}

