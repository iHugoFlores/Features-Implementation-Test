//
//  ChartTableScreenViewController.swift
//  FeatureImplTest
//
//  Created by Hugo Flores Perez on 5/20/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

class ChartTableScreenViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        tabBarItem = UITabBarItem(title: "Chart Table", image: UIImage(systemName: "chart.bar"), tag: 1)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
