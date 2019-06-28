//
//  List.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 18/06/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import Foundation
import UIKit

class ListViewController: UIViewController {
    
    let cell_identifier = "list_cell"
    
    var tableView: UITableView!
    var params: ListParams!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = params.layout.background
        
        tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .clear
        tableView.separatorColor = .white
        tableView.tableFooterView = UIView()
        tableView.register(SimpleCell.self, forCellReuseIdentifier: cell_identifier)
        view.addSubview(tableView)
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
}


extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return params.objectList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = SimpleCell()
        
        cell.object = params.objectList[indexPath.row]
        cell.separatorInset = .zero
        cell.selectionStyle = .none
        cell.backgroundColor = params.layout.cellBackground
        cell.titleLabel.textColor = params.layout.titleColor
        cell.bodyLabel.textColor = params.layout.bodyColor
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        params.callback.onClick(object: params.objectList[indexPath.row])
    }
    
}
