//
//  BookCell.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

class BookCell: UICollectionViewCell {

    let containerCardView: UIView = {
        return buildUI.cardView(id: "bookCell_containerCardView")
    }()
    
    let coverImage: ImageLoader = {
        return buildUI.imageLoader(id: "bookCell_coverImage")
    }()
    
    let titleLabel: UILabel = {
        return buildUI.label(id: "bookCell_title", style: .headline, color: .black, align: .left, text: "", numberOfLines: 1)
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupComponent()
        setupConstraint()
    }
    
    func setupData(data: BookResponse) {
        if let coverURL = data.coverURL {
            coverImage.loadImageUsingUrlString(DZAConstant.getImageUrl(path: coverURL), completion: { (_) in})
        }
        titleLabel.text = data.title ?? ""
    }

    private func setupComponent() {
        addSubview(containerCardView)
        addSubview(coverImage)
        addSubview(titleLabel)
        coverImage.backgroundColor = .gray
    }

    private func setupConstraint() {
        NSLayoutConstraint.activate([
            containerCardView.topAnchor.constraint(equalTo: topAnchor),
            containerCardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            containerCardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            containerCardView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            coverImage.topAnchor.constraint(equalTo: containerCardView.topAnchor),
            coverImage.leadingAnchor.constraint(equalTo: containerCardView.leadingAnchor),
            coverImage.trailingAnchor.constraint(equalTo: containerCardView.trailingAnchor),
            coverImage.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant: -8)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.bottomAnchor.constraint(equalTo: containerCardView.bottomAnchor, constant: -8),
            titleLabel.leadingAnchor.constraint(equalTo: containerCardView.leadingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: containerCardView.trailingAnchor, constant: -8)
        ])
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
