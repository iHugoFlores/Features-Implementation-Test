//
//  SideMenuView.swift
//  FeatureImplTest
//
//  Created by Hugo Flores Perez on 5/20/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

class SideMenuView: UIView {

    private let tableView: UITableView = {
        let table = UITableView()
        // Dinamic height for cells
        table.rowHeight = UITableView.automaticDimension
        table.estimatedRowHeight = 10
        // Removes bounce when not enough entries
        table.alwaysBounceVertical = false
        // Hide scroll indicator
        table.showsVerticalScrollIndicator = false
        // Remove extra empty cells at the bottom
        table.tableFooterView = UIView()
        return table
    }()

    init() {
        super.init(frame: .zero)
        setUpLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setUpLayout() {
        tableView.addToAndFill(parent: self)
    }

    func setTableDataSourceAs(_ source: UITableViewDataSource) {
        tableView.dataSource = source
    }
}
