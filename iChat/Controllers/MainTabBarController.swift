//
//  MainTabBarController.swift
//  iChat
//
//  Created by Максим on 16.09.2020.
//  Copyright © 2020 Novikov Maxim. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private let currentUser: MUser
    
    init(currentUser: MUser = MUser(username: "holder",
                                    email: "holder",
                                    avatarStringURL: "holder",
                                    description: "holder",
                                    sex: "holder",
                                    id: "holder")) {
        self.currentUser = currentUser
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listViewController = ListViewController(currentUser: currentUser)
        let peopleViewController = PeopleViewController(currentUser: currentUser)
        
        tabBar.tintColor = #colorLiteral(red: 0.5568627451, green: 0.3529411765, blue: 0.968627451, alpha: 1)
        
        let boldConfiguration = UIImage.SymbolConfiguration(weight: UIImage.SymbolWeight.medium)
        guard let peopleImage = UIImage.init(systemName: "person.2", withConfiguration: boldConfiguration) else { return }
        guard let convImage = UIImage.init(systemName: "bubble.left.and.bubble.right", withConfiguration: boldConfiguration) else { return }
        
        viewControllers = [
            generateNavigationController(rootViewController: peopleViewController, title: "People", image: peopleImage),
            generateNavigationController(rootViewController: listViewController, title: "Conversation", image: convImage)
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
