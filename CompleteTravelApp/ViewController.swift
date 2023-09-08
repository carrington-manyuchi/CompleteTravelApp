//
//  ViewController.swift
//  CompleteTravelApp
//
//  Created by DA MAC M1 157 on 2023/09/08.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var featuredLocationData: [TopLocation] = {
        return TopLocation.featuredData
    }()

    lazy var recommendedLocationData: [LocationModel] = {
        return LocationModel.recommendData
    }()

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(FeaturedTableViewCell.self, forCellReuseIdentifier: FeaturedTableViewCell.identifier)
        tableView.register(RecommendedTableViewCell.self, forCellReuseIdentifier: RecommendedTableViewCell.identifier)
        tableView.rowHeight = CGFloat(396.0)
        tableView.insetsContentViewsToSafeArea = true
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(tableView)
        tableView.backgroundColor = UIColorFromRGB(rgbValue: 0xF5F5F5)
        tableView.dataSource = self
        tableView.delegate = self
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
        let tableViewConstraints = [
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(tableViewConstraints)
    }

}

//MARK: - Table Delegates and Methods

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return recommendedLocationData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: FeaturedTableViewCell.identifier, for: indexPath) as? FeaturedTableViewCell else {
                print("Could not dequeue Featured table view cell")
                return UITableViewCell()
            }
           // cell.topLocationsData = featuredLocationData
            
            cell.configure(with: featuredLocationData)
            return cell
        }
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RecommendedTableViewCell.identifier, for: indexPath) as? RecommendedTableViewCell else {
            print("Could not dequeue recommended cell")
            return UITableViewCell()
        }
        
        let location: LocationModel = recommendedLocationData[indexPath.row]
        cell.locationImage.image = location.locationImage
        cell.locationTitle.text = location.locationTitle
        cell.locationSubTitle.text = location.locationSubTitle
        cell.priceLabel.text = location.locationPrice
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        if indexPath.section == 0 {
            return CGFloat(396)
        }
        return CGFloat(126.0)
    }
    
}
