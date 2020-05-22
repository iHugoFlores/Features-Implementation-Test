//
//  NetworkEngine.swift
//  FeatureImplTest
//
//  Created by Hugo Flores Perez on 5/22/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

class NetworkEngine: NetworkProtocol {
    func getData(url: URL, _ completion: @escaping CompletionHandler) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
}
