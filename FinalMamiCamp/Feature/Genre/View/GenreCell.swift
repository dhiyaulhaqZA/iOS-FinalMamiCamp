//
//  GenreCell.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

class GenreCell: UICollectionViewCell {
    
    let containerCardView: UIView = {
        return buildUI.cardView(id: "genreCell_containerCardView")
    }()
    
    let titleLabel: UILabel = {
        return buildUI.label(id: "genreCell_title", style: .headline, color: .black, align: .center, text: "", numberOfLines: 3)
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupComponent()
        setupConstraint()
    }

    private func setupComponent() {
        addSubview(containerCardView)
        containerCardView.addSubview(titleLabel)
    }
    
    func setupData(title: String) {
        titleLabel.text = title
    }

    private func setupConstraint() {
        NSLayoutConstraint.activate([
            containerCardView.topAnchor.constraint(equalTo: topAnchor),
            containerCardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            containerCardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            containerCardView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containerCardView.topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: containerCardView.leadingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: containerCardView.trailingAnchor, constant: -8),
            titleLabel.bottomAnchor.constraint(equalTo: containerCardView.bottomAnchor, constant: -8)
        ])
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
