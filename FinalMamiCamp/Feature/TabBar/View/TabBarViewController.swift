//
//  TabBarViewController.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    var presenter: TabBarViewToPresenterProtocol?
    var param: TabBarParam?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupComponent()
    }
    
    private func setupComponent() {
        self.delegate = self
        viewControllers = buildTabBarList()
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        makeRootViewController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hide the navigation bar for current view controller
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Show the navigation bar on other view controllers
        self.navigationController?.isNavigationBarHidden = false
    }
    
    private func buildTabBarList() -> [UIViewController] {
        let tabBars: [TabBarMenu] = [.newBook, .genres]
        var vControllers: [UIViewController] = []
        tabBars.forEach { (tabMenu) in
            let viewController = tabMenu.viewController
            viewController.tabBarItem.title = tabMenu.title
            viewController.tabBarItem.image = tabMenu.selectedImage
            vControllers.append(viewController)
        }
        return vControllers
    }
    
}
