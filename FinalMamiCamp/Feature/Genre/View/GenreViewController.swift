//
//  GenreViewController.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 13/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

class GenreViewController: UICollectionViewController {
    
    var presenter: GenreViewToPresenterProtocol?
    var param: GenreParam?
    var genreList: [GenreResult] = []
    
    let homeItemCellIdentifier = "homeItemCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        collectionView.backgroundColor = .white
        collectionView.contentInset = UIEdgeInsets(top: 16, left: 8, bottom: 16, right: 8)
        collectionView.register(GenreCell.self, forCellWithReuseIdentifier: homeItemCellIdentifier)
        
        presenter?.getGenres()
    }
    
}
