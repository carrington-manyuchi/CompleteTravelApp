//
//  FeaturedTableViewCell.swift
//  CompleteTravelApp
//
//  Created by DA MAC M1 157 on 2023/09/08.
//

import UIKit

class FeaturedTableViewCell: UITableViewCell {
    
    public static let identifier = "FeaturedTableViewCell"
    
    var tops = [TopLocation]()
    
//    var topLocationsData: [TopLocation] = [TopLocation]() {
//        didSet {
//            collectionView.reloadData()
//        }
//    }
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(TopLocationCollectionViewCell.self, forCellWithReuseIdentifier: TopLocationCollectionViewCell.identifier)
        return collectionView
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupUI()
        
    }
    
    func configure(with topLocationsData: [TopLocation]) {
            self.tops = topLocationsData
            collectionView.reloadData()
        }
    
    func setupUI() {
        contentView.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.delegate = self
        setupConstraints()
    }
    
    func setupConstraints() {
        let collectionViewConstraints = [
            collectionView.topAnchor.constraint(equalTo: contentView.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(collectionViewConstraints)
    }

}

//MARK: - Collection View Delegates and Datasource
 
extension FeaturedTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tops.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TopLocationCollectionViewCell.identifier, for: indexPath) as? TopLocationCollectionViewCell else {
            print("Could not dequeue TopLocationCollectionViewCell")
            return UICollectionViewCell()
        }
                
        cell.configure(with: tops[indexPath.row])
        cell.topImageView.image = tops[indexPath.row].locationImage
                
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = contentView.frame.width
        return CGSize(width: width, height: 370)
    }
}
