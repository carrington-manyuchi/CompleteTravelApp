//
//  ViewController.swift
//  CompleteTravelApp
//
//  Created by DA MAC M1 157 on 2023/09/08.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var featuredLocation: [LocationModel] = {
        return LocationModel.featuredData
    }()


    lazy var recommendedLocationData: [LocationModel] = {
        return LocationModel.recommendData
    }()

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell ")
        tableView.rowHeight = CGFloat(396.0)
        tableView.tableFooterView = UIView()
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .systemBackground
    }

}

