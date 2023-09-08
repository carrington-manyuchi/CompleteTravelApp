//
//  TopLocation.swift
//  CompleteTravelApp
//
//  Created by DA MAC M1 157 on 2023/09/08.
//

import UIKit





class TopLocation {
    
    static let featuredData: [TopLocation] = [
        TopLocation(locationTitle: "Clifton Beach Apartment", locationSubTitle: "PRIVATE 1 ROOM", locationPrice: "$104 per night", locationImage: UIImage(named: "1bedroomapartment")!),
        TopLocation(locationTitle: "Medteranean Villa Apartment", locationSubTitle: "ENTIRE VILLA 4 BEDS", locationPrice: "$168 per night", locationImage: UIImage(named: "mediteraneanvilla")!),
        TopLocation(locationTitle: "City Penthouse", locationSubTitle: "ENTIRE APARTMENT", locationPrice: "$119 per night", locationImage: UIImage(named: "citypenthouse")!)
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
