//
//  DetailBookViewPresenterToView.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

extension DetailBookViewController: DetailBookPresenterToViewProtocol {
    func onGetDetailBookSuccess(body: ServerResponse<DetailBookResponse>, responseCode: Int) {
        detailBookData = body.result
        collectionView.reloadData()
    }
    
    func onGetDetailBookFailure(errMsg: String, responseCode: Int, errorCode: Int) {
        Snacky.show(title: errMsg)
    }
    
    func onGetDetailBookLoading(isLoading: Bool) {
        
    }
    

}
