//
//  Region.swift
//  FeatureImplTest
//
//  Created by Hugo Flores Perez on 5/22/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import Foundation

struct Region: Codable {
    let name: String
    let lattitude, longitude: Double
    let places: [Place]

    static func getRegion(networkManager: NetworkManager, _ completion: @escaping (Result<Self, NetworkError>) -> Void) {
        let endpoint = "http://www.mocky.io/v2/5ec80eb12f00001a0a4276d9"
        guard let url = URL(string: endpoint) else { return }
        networkManager.getData(url: url) { (result: Result<Self, NetworkError>) in
            completion(result)
        }
    }
}
