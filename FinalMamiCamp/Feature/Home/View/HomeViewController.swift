//
//  HomeViewController.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 13/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController {
    
    var presenter: HomeViewToPresenterProtocol?
    var param: HomeParam?
    
    let homeItemCellIdentifier = "homeItemCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        collectionView.backgroundColor = .white
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: homeItemCellIdentifier)
    }
    
}
