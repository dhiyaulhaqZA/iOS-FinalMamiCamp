//
//  DZAKeychain.swift
//  Consumer
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 31/10/19.
//  Copyright © 2019 dhiyaulhaqza. All rights reserved.
//

import Foundation

public enum DZAKeychainKey {
    case token, consumerSummaryProfile, consumerProfile, appleId, banners, groupServices, lastOrders, fcmToken
    
    var keyString: String {
        switch self {
        case .token:
            return "keychain_token"
        case .consumerSummaryProfile:
            return "keychain_consumer_summary_profile"
        case .consumerProfile:
            return "keychain_consumer_profile"
        case .appleId:
            return "keychain_appleid"
        case .banners:
            return "keychain_banners"
        case .groupServices:
            return "keychain_group_services"
        case .lastOrders:
            return "keychain_last_orders"
        case .fcmToken:
            return "keychain_fcm_token"
        }
    }
}

class DZAKeychain {
    
    let keychain = KeychainSwift()

    func setToken(value: String) {
        keychain.set(value, forKey: .token)
    }
    
    func getToken() -> String? {
        return keychain.get(.token)
    }
    
    func clearData() {
        keychain.clear()
    }
}
