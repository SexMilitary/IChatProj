//
//  MainTabBarController.swift
//  iChat
//
//  Created by Максим on 16.09.2020.
//  Copyright © 2020 Novikov Maxim. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listViewController = ListViewController()
        let peopleViewController = PeopleViewController()
        
        tabBar.tintColor = #colorLiteral(red: 0.5568627451, green: 0.3529411765, blue: 0.968627451, alpha: 1)
        
        let boldConfiguration = UIImage.SymbolConfiguration(weight: UIImage.SymbolWeight.medium)
        guard let peopleImage = UIImage.init(systemName: "person.2", withConfiguration: boldConfiguration) else { return }
        guard let convImage = UIImage.init(systemName: "bubble.left.and.bubble.right", withConfiguration: boldConfiguration) else { return }
        
        viewControllers = [
            generateNavigationController(rootViewController: listViewController, title: "Conversation", image: convImage),
            generateNavigationController(rootViewController: peopleViewController, title: "People", image: peopleImage)
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
