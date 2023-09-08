//
//  TopLocationCollectionViewCell.swift
//  CompleteTravelApp
//
//  Created by DA MAC M1 157 on 2023/09/08.
//

import UIKit

class TopLocationCollectionViewCell: UICollectionViewCell {
    

    
//    lazy var featuredLocationData: [TopLocation] = {
//        return TopLocation.featuredData
//    }()
//
//    var topLocationsData: [TopLocation] = [TopLocation]()
    
    public static let identifier = "TopLocationCollectionViewCell"
    
    private let mainView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.layer.cornerRadius = CGFloat(20.0)
        view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75).cgColor
        view.layer .shadowOpacity  = 0.7
        view.layer.shadowRadius = CGFloat(5.0)
        view.layer.shadowOffset = CGSize(width: 1, height: 2)
        
        
        return view
    }()
    
     let topImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "person")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true

        return imageView
    }()
    
//    func configure(with image: UIImage) {
//        topImageView.image = image
//        setupUI()
//    }
    
    public func configure(with models: TopLocation) {
        topImageView.image = UIImage(named: "\(models.locationImage)")
            setupUI()
        }
    
    func setupUI() {
        contentView.addSubview(mainView)
        mainView.addSubview(topImageView)
        mainView.backgroundColor = UIColorFromRGB(rgbValue: 0xEEEBDD)
        setupConstraints()
    }
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    func setupConstraints() {
        let mainViewConstraints = [
            mainView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            mainView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            mainView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            mainView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10
                                            )
        ]
        
        let topImageViewConstraints = [
            topImageView.topAnchor.constraint(equalTo: mainView.topAnchor),
            topImageView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            topImageView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            //topImageView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor)
            topImageView.heightAnchor.constraint(equalToConstant: 250)
        ]
        
        NSLayoutConstraint.activate(mainViewConstraints)
        NSLayoutConstraint.activate(topImageViewConstraints)
    }
    
}
