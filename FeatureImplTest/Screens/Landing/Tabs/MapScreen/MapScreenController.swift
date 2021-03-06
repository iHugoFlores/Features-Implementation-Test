//
//  MapScreenController.swift
//  FeatureImplTest
//
//  Created by Hugo Flores Perez on 5/20/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

class MapScreenController: UIViewController {
    private let mapView = MapScreenView()
    private var networkManager: NetworkManager?

    init(networkManager: NetworkManager) {
        super.init(nibName: nil, bundle: nil)
        tabBarItem = UITabBarItem(title: "Map", image: UIImage(systemName: "map"), tag: 0)
        self.networkManager = networkManager
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = mapView
    }

    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.topItem?.title = "Map"
    }

    @objc func getLocations() {
        guard let networkManager = networkManager else { return }
        Region.getRegion(networkManager: networkManager) { (result) in
            print("API result", result)
        }
    }
}

extension MapScreenController: LandingTabScreen {
    func getRightNavbarIconButton() -> UIBarButtonItem {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "downloadPlaces"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        let buttonItem = UIBarButtonItem(customView: button)
        buttonItem.customView?.constraintWidthTo(width: 28, height: 28)
        button.addTarget(self, action: #selector(getLocations), for: .touchUpInside)
        return buttonItem
    }
}
