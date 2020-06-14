//
//  TabBarEntity.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation
import UIKit

struct TabBarParam {
    
}

enum TabBarMenu {
    case newBook, genres
    
    var viewController: UIViewController {
        switch self {
        case .newBook:
            return BookRouter.createModule(param: BookParam())
        case .genres:
            return GenreRouter.createModule(param: GenreParam())
        
        }
    }
    
    var title: String {
        switch self {
        case .newBook:
            return "New Books"
        case .genres:
            return "Genres"
        }
    }
    
    var selectedImage: UIImage? {
        switch self {
        case .newBook:
            return R.image.icNew()
        case .genres:
            return R.image.icGenre()
        }
    }
}
