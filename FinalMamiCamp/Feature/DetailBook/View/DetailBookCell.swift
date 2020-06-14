//
//  DetailBookCell.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

class DetailBookCell: UICollectionViewCell, RatingViewDelegate {

    lazy var width: NSLayoutConstraint = {
        let width = contentView.widthAnchor.constraint(equalToConstant: bounds.size.width)
        width.isActive = true
        return width
    }()

    let coverImage: ImageLoader = {
        return buildUI.imageLoader(id: "detailBookCell_coverImage")
    }()
    
    let titleLabel: UILabel = {
        return buildUI.label(id: "detailBookCell_title", style: .title3, color: .black, align: .left, text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod", numberOfLines: 0)
    }()
    
    let authorLabel: UILabel = {
        return buildUI.label(id: "detailBook_author", style: .body, color: .black, text: "By Unknown")
    }()
    
    lazy var rating: RatingView = {
        return buildUI.ratingView(id: "detailBook_rating", delegate: self)
    }()
    
    let descriptionLabel: UILabel = {
        return buildUI.label(id: "detailBook_description", style: .body, color: .black, text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo")
    }()
    
    func setupData(data: DetailBookResponse?) {
        if let coverURL = data?.coverURL {
            coverImage.loadImageUsingUrlString(DZAConstant.getImageUrl(path: coverURL), completion: { (_) in})
        }
        titleLabel.text = data?.title ?? ""
        authorLabel.text = "By \(data?.writerByWriterID?.userByUserID?.name ?? "Unknown")"
        rating.rating = data?.decimalRate ?? 0.0
        descriptionLabel.text = data?.desc
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupComponent()
        setupConstraint()
    }

    private func setupComponent() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(coverImage)
        contentView.addSubview(titleLabel)
        contentView.addSubview(authorLabel)
        contentView.addSubview(rating)
        contentView.addSubview(descriptionLabel)
    }

    private func setupConstraint() {
        NSLayoutConstraint.activate([
            coverImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            coverImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            coverImage.widthAnchor.constraint(equalToConstant: (contentView.frame.width-32)/2),
            coverImage.heightAnchor.constraint(equalTo: coverImage.widthAnchor, multiplier: 1.5)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: coverImage.trailingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            titleLabel.bottomAnchor.constraint(equalTo: authorLabel.topAnchor, constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            authorLabel.bottomAnchor.constraint(equalTo: rating.topAnchor, constant: -8),
            authorLabel.leadingAnchor.constraint(equalTo: coverImage.trailingAnchor, constant: 16),
            authorLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            rating.bottomAnchor.constraint(equalTo: coverImage.bottomAnchor),
            rating.leadingAnchor.constraint(equalTo: coverImage.trailingAnchor, constant: 16),
            rating.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            rating.heightAnchor.constraint(equalToConstant: 32)
        ])
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: coverImage.bottomAnchor, constant: 16),
            descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
        
        contentView.bottomAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16).isActive = true
    }

    override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
        width.constant = bounds.size.width
        return contentView.systemLayoutSizeFitting(CGSize(width: targetSize.width, height: 1))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
