//
//  NetErrorHandler.swift
//  Consumer
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 01/11/19.
//  Copyright © 2019 dhiyaulhaqza. All rights reserved.
//

import UIKit

class NetErrorHandler {
    
    static func onError(_ viewController: UIViewController, _ errMsg: String,
                        _ responseCode: Int, _ errorCode: Int) {
        Snacky.show(title: "[\(errorCode)] \(errMsg)")
        if responseCode == 401 {
            AuthLogout.logout(viewController)
        }
    }
}
