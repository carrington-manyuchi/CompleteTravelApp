//
//  LocationModel.swift
//  CompleteTravelApp
//
//  Created by DA MAC M1 157 on 2023/09/08.
//

import UIKit

class LocationModel {
    
//    static let featuredData: [LocationModel] = [
//        LocationModel(locationTitle: "Clifton Beach Apartment", locationSubTitle: "PRIVATE 1 ROOM", locationPrice: "$104 per night", locationImage: UIImage(named: "1bedroomapartment")!),
//        LocationModel(locationTitle: "Medteranean Villa Apartment", locationSubTitle: "ENTIRE VILLA 4 BEDS", locationPrice: "$168 per night", locationImage: UIImage(named: "mediteraneanvilla")!),
//        LocationModel(locationTitle: "City Penthouse", locationSubTitle: "ENTIRE APARTMENT", locationPrice: "$119 per night", locationImage: UIImage(named: "citypenthouse")!)
//    ]
    
    
    static let recommendData: [LocationModel] = [
        LocationModel(locationTitle: "Lake View Apartment", locationSubTitle: "PRIVATE 2 ROOMS", locationPrice: "$110 per night", locationImage: UIImage(named: "lakeviewapartment")!),
        LocationModel(locationTitle: "Stylish Apartment", locationSubTitle: "PRIVATE 1 ROOM", locationPrice: "$95 per night", locationImage: UIImage(named: "stylishapartment")!),
        LocationModel(locationTitle: "Small Room", locationSubTitle: "PRIVATE 1 ROOM", locationPrice: "$70 per night", locationImage: UIImage(named: "smallroom")!),
    ]
    
    
    var locationTitle: String
    var locationSubTitle: String
    var locationPrice: String
    var locationImage: UIImage
    
    init(locationTitle: String, locationSubTitle: String, locationPrice: String, locationImage: UIImage) {
        self.locationTitle = locationTitle
        self.locationSubTitle = locationSubTitle
        self.locationPrice = locationPrice
        self.locationImage = locationImage
    }
}
