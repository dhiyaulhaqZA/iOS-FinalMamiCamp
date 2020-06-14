//
//  DetailBookViewController.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

class DetailBookViewController: UICollectionViewController {
    
    var presenter: DetailBookViewToPresenterProtocol?
    var param: DetailBookParam?
    var detailBookData: DetailBookResponse?
    
    let detailBookCellIdentifier = "detailBookCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        collectionView.backgroundColor = .white
        
        collectionView.alwaysBounceVertical = true
        collectionView.contentInset = UIEdgeInsets(top: 4, left: 0, bottom: 4, right: 0)
        if let flowLayout = collectionView.collectionViewLayout as? DZACollectionViewFlowLayout {
            let width = UIScreen.main.bounds.size.width
            flowLayout.estimatedItemSize = CGSize(width: width, height: 10)
        }
        
        collectionView.register(DetailBookCell.self, forCellWithReuseIdentifier: detailBookCellIdentifier)
        
        presenter?.getGetDetail(param: DetailBookParam(id: param?.id ?? 392))
    }
    
}
