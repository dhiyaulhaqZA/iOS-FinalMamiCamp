//
//  BookViewController.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

class BookViewController: UICollectionViewController {
    
    var presenter: BookViewToPresenterProtocol?
    var param: BookParam?
    var bookList: [BookResponse] = []
    
    let bookCellIdentifier = "bookCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        collectionView.backgroundColor = .white
        collectionView.contentInset = UIEdgeInsets(top: 16, left: 8, bottom: 16, right: 8)
        collectionView.register(BookCell.self, forCellWithReuseIdentifier: bookCellIdentifier)
        
        presenter?.getNewBooks(param: GetNewBookBody(limit: 18))
    }
    
}
