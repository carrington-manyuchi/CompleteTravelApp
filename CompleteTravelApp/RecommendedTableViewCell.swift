//
//  RecommendedTableViewCell.swift
//  CompleteTravelApp
//
//  Created by DA MAC M1 157 on 2023/09/08.
//

import UIKit

class RecommendedTableViewCell: UITableViewCell {
    
    private let recommendedLayer: UIView = {
        let view = UIView()
        view.layer.cornerRadius = CGFloat(7.0)
        view.layer.shadowOpacity = 0.7
        view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        view.layer.shadowRadius = CGFloat(5.0)
        return view
    }()
    
    private let locationImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let locationTitle: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.numberOfLines = 1
        label.font = UIFont(name: "Avenir-bold", size: 20)
        return label
    }()
    
    private let locationSubTitle: UILabel = {
        let label = UILabel()
        label.text = "Sub Title"
        label.numberOfLines = 1
        label.textColor = .lightGray
        label.font = UIFont(name: "Avenir-medium", size: 14)
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "$0.00"
        label.numberOfLines = 1
        label.font = UIFont(name: "Avenir-regular", size: 15)
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupUI() {
        contentView.addSubview(recommendedLayer)
        recommendedLayer.addSubview(locationImage)
        recommendedLayer.addSubview(locationTitle)
        recommendedLayer.addSubview(locationSubTitle)
        recommendedLayer.addSubview(priceLabel)
        setupConstraints()
    }
    
    func setupConstraints() {
        
        let recommendedLayerConstraints = [
            recommendedLayer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            recommendedLayer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            recommendedLayer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            recommendedLayer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ]
        
        let locationImageConstraints = [
            locationImage.topAnchor.constraint(equalTo: recommendedLayer.topAnchor, constant: 5),
            locationImage.leadingAnchor.constraint(equalTo: recommendedLayer.leadingAnchor, constant: 5),
            locationImage.widthAnchor.constraint(equalToConstant: 90),
        ]
        
        let locationTitleConstraints = [
            locationTitle.leadingAnchor.constraint(equalTo: locationImage.trailingAnchor, constant: 10),
            locationTitle.topAnchor.constraint(equalTo: locationImage.topAnchor),
            locationTitle.trailingAnchor.constraint(greaterThanOrEqualTo: recommendedLayer.trailingAnchor, constant: 10),
            
        ]
        
        let locationSubTitleConstraints = [
            locationSubTitle.topAnchor.constraint(equalTo: locationTitle.bottomAnchor, constant: 10),
            locationSubTitle.leadingAnchor.constraint(equalTo: locationImage.trailingAnchor, constant: 10),
            locationSubTitle.trailingAnchor.constraint(greaterThanOrEqualTo: recommendedLayer.trailingAnchor, constant: 10)
            
        ]
        
        let priceLabelConstraints = [
            priceLabel.leadingAnchor.constraint(equalTo: locationImage.trailingAnchor, constant: 10),
            priceLabel.topAnchor.constraint(equalTo: locationSubTitle.bottomAnchor, constant: 12),
            priceLabel.trailingAnchor.constraint(greaterThanOrEqualTo: recommendedLayer.trailingAnchor, constant: 10)
        ]
        
        NSLayoutConstraint.activate(recommendedLayerConstraints)
        NSLayoutConstraint.activate(locationImageConstraints)
        NSLayoutConstraint.activate(locationTitleConstraints)
        NSLayoutConstraint.activate(locationSubTitleConstraints)
        NSLayoutConstraint.activate(priceLabelConstraints)
    }
    

}
