//
//  RecommendedTableViewCell.swift
//  CompleteTravelApp
//
//  Created by DA MAC M1 157 on 2023/09/08.
//

import UIKit

class RecommendedTableViewCell: UITableViewCell {
    
    public static let identifier = "RecommendedTableViewCell"
    
    private let mainView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.layer.cornerRadius = CGFloat(7.0)
        view.layer.shadowOpacity = 0.7
        view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        view.layer.shadowRadius = CGFloat(5.0)
        
       // view.backgroundColor = .systemGray5
        
        return view
    }()
    
     let locationImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "1bedroomapartment")
        imageView.contentMode = .scaleAspectFill
        //imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        return imageView
    }()
    
     let locationTitle: UILabel = {
        let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Title"
        label.numberOfLines = 1
        label.font = UIFont(name: "Avenir-bold", size: 20)
        return label
    }()
    
     let locationSubTitle: UILabel = {
        let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sub Title"
        label.numberOfLines = 1
        label.textColor = .lightGray
        label.font = UIFont(name: "Avenir-medium", size: 14)
        return label
    }()
    
     let priceLabel: UILabel = {
        let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
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
        setupUI()
    }
    
    func setupUI() {
        contentView.addSubview(mainView)
        mainView.addSubview(locationImage)
        mainView.addSubview(locationTitle)
        mainView.addSubview(locationSubTitle)
        mainView.addSubview(priceLabel)
        setupConstraints()
    }
    
    func setupConstraints() {
        
        let mainViewConstraints = [
            mainView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            mainView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            mainView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            mainView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
        ]
        
        let locationImageConstraints = [
            locationImage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 5),
            locationImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 5),
            locationImage.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -5),
            locationImage.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        let locationTitleConstraints = [
            locationTitle.leadingAnchor.constraint(equalTo: locationImage.trailingAnchor, constant: 10),
            locationTitle.topAnchor.constraint(equalTo: locationImage.topAnchor),
            locationTitle.trailingAnchor.constraint(greaterThanOrEqualTo: mainView.trailingAnchor, constant: -10),
            
        ]
        
        let locationSubTitleConstraints = [
            locationSubTitle.topAnchor.constraint(equalTo: locationTitle.bottomAnchor, constant: 10),
            locationSubTitle.leadingAnchor.constraint(equalTo: locationImage.trailingAnchor, constant: 10),
            locationSubTitle.trailingAnchor.constraint(greaterThanOrEqualTo: mainView.trailingAnchor, constant: -10)
            
        ]
        
        let priceLabelConstraints = [
            priceLabel.leadingAnchor.constraint(equalTo: locationImage.trailingAnchor, constant: 10),
            priceLabel.topAnchor.constraint(equalTo: locationSubTitle.bottomAnchor, constant: 12),
            priceLabel.trailingAnchor.constraint(greaterThanOrEqualTo: mainView.trailingAnchor, constant: -10)
        ]
        
        NSLayoutConstraint.activate(mainViewConstraints)
        NSLayoutConstraint.activate(locationImageConstraints)
        NSLayoutConstraint.activate(locationTitleConstraints)
        NSLayoutConstraint.activate(locationSubTitleConstraints)
        NSLayoutConstraint.activate(priceLabelConstraints)
    }

}
