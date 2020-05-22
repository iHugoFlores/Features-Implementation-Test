//
//  Place.swift
//  FeatureImplTest
//
//  Created by Hugo Flores Perez on 5/22/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import Foundation

struct Place: Codable {
    let lattitude, longitude: Double
    let name, areaName: String
    let price, promotionPrice, rating: Int
    let previewUrl: String
}
