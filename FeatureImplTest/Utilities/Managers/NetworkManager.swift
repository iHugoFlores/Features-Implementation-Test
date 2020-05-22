//
//  NetworkManager.swift
//  FeatureImplTest
//
//  Created by Hugo Flores Perez on 5/22/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

class NetworkManager {
    private var networkHandler: NetworkProtocol

    init(networkHandler: NetworkProtocol) {
        self.networkHandler = networkHandler
    }
    
    init() {
        networkHandler = NetworkEngine()
    }
    
    func getData<T>(url: URL, _ completion: @escaping (Result<T, NetworkError>) -> Void) where T : Decodable {
        networkHandler.getData(url: url) { (data, response, error) in
            if let error = error as NSError?, error.domain == NSURLErrorDomain {
                switch error.code {
                case NSURLErrorNotConnectedToInternet:
                    completion(Result.failure(.offline))
                default:
                    completion(Result.failure(.unknownError))
                }
                return
            }
            if let response = response as? HTTPURLResponse,
                response.statusCode != 200 {
                 completion(Result.failure(.serverError))
                return
            }
            guard let data = data else {
                completion(Result.failure(.emptyResult))
                return
            }
            do {
                let result = try JSONDecoder().decode(T.self, from: data)
                completion(Result.success(result))
            } catch let err {
                completion(Result.failure(.invalidResponse(err)))
            }
        }
    }
}
