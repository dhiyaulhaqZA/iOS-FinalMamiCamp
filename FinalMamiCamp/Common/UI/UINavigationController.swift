//
//  UINavigationController.swift
//  Consumer
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/11/19.
//  Copyright © 2019 Hepicar. All rights reserved.
//

import UIKit

extension UINavigationController {
    
    func setHepicarStyle() {
        UINavigationBar.appearance().tintColor = .black
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.clear], for: .normal)
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.clear], for: UIControl.State.highlighted)
        let backButton = R.image.icBack()?.changeImageColor(.black)
        self.navigationBar.barTintColor = .white
        self.navigationBar.backIndicatorImage = backButton
        self.navigationBar.backIndicatorTransitionMaskImage = backButton
        self.navigationBar.backItem?.title = ""
    }
    
    func popsViewController(numberOfLastStacks: Int) {
        let count = viewControllers.count
        let toStack = count - numberOfLastStacks
        for index in stride(from: count - 1, to: toStack, by: -1) {
            viewControllers.remove(at: index)
        }
        popViewController(animated: true)
    }
}
