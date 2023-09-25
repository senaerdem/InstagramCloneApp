//
//  MainTabController.swift
//  InstagramCloneApp
//
//  Created by Sena Nur Erdem on 25.09.2023.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        view.backgroundColor = .white
        
        let feed = templateNavigationController(unselectedImage:UIImage(imageLiteralResourceName: "home_unselected") , selectedImage: UIImage(imageLiteralResourceName: "home_selected"), rootViewController: FeedController())
                
        let search = templateNavigationController(unselectedImage:UIImage(imageLiteralResourceName: "search_unselected") , selectedImage: UIImage(imageLiteralResourceName: "search_selected"), rootViewController: SearchController())
                
        let imageSelector = templateNavigationController(unselectedImage:UIImage(imageLiteralResourceName: "plus_unselected") , selectedImage: UIImage(imageLiteralResourceName: "plus_unselected"), rootViewController: ImageSelectorController())
                
        let notifications = templateNavigationController(unselectedImage:UIImage(imageLiteralResourceName: "like_unselected") , selectedImage: UIImage(imageLiteralResourceName: "like_selected"), rootViewController: NotificationController())
                
        let profile = templateNavigationController(unselectedImage:UIImage(imageLiteralResourceName: "profile_unselected") , selectedImage: UIImage(imageLiteralResourceName: "profile_selected"), rootViewController: ProfileController())
                
                viewControllers = [feed, search, imageSelector, notifications, profile]
                tabBar.tintColor = .black
    }
    
    func templateNavigationController(unselectedImage: UIImage, selectedImage: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        return nav
    }
}
