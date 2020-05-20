//
//  ViewController.swift
//  FeatureImplTest
//
//  Created by Hugo Flores Perez on 5/19/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

class LaunchingController: UITabBarController {

    private let tabControllers = [MapScreenController(), ChartTableScreenViewController()]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpTabs()
    }

    private func setUpTabs() {
        viewControllers = tabControllers
    }
}
