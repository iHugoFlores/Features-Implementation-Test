//
//  ViewController.swift
//  FeatureImplTest
//
//  Created by Hugo Flores Perez on 5/19/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import SideMenu
import UIKit

class LaunchingController: UITabBarController {

    private let tabContentControllers = [MapScreenController(), ChartTableScreenViewController()]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpTabs()
        setUpNavBar()
    }

    private func setUpTabs() {
        viewControllers = tabContentControllers
    }

    private func setUpNavBar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "ellipsis"), style: .plain, target: self, action: #selector(onMenuPressed))
    }

    @objc func onMenuPressed() {
        let menu = SideMenuNavigationController(rootViewController: SideMenuViewController())
        let presentationStyle: SideMenuPresentationStyle = .menuSlideIn
        presentationStyle.backgroundColor = .systemBlue
        presentationStyle.onTopShadowOpacity = 0.5
        presentationStyle.menuStartAlpha = 0
        presentationStyle.presentingEndAlpha = 0.5
        var settings = SideMenuSettings()
        settings.presentationStyle = presentationStyle
        settings.statusBarEndAlpha = 0
        menu.settings = settings
        menu.leftSide = true
        present(menu, animated: true, completion: nil)
    }
}
