//
//  Constant.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation

class DZAConstant {
    
    static let apiKey = "25e0bf00ab2fa7f03a9fa57035139e47ccb28c20658f6de907b8011347e369fb"
    static let imageApiKey = "32ded42cfffb77dee86a29f43d36a3641849d4b5904aade9a79e9aa6cd5b5948"
    
    static func getImageUrl(path: String) -> String {
        return "https://cabaca.id:8443/api/v2/files/\(path)&api_key=\(imageApiKey)"
    }
}
