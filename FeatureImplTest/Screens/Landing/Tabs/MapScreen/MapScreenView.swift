//
//  MapScreenView.swift
//  FeatureImplTest
//
//  Created by Hugo Flores Perez on 5/20/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import MapKit
import UIKit

class MapScreenView: UIView {

    private let mapView: MKMapView = {
        let map = MKMapView()
        map.translatesAutoresizingMaskIntoConstraints = false
        return map
    }()

    init() {
        super.init(frame: .zero)
        setUpLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setUpLayout() {
        mapView.addToAndFill(parent: self)
    }
}
