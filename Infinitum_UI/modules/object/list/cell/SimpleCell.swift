//
//  SimpleCell.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 19/06/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import UIKit

class SimpleCell: UITableViewCell, CellProtocol {
    
    var titleLabel = UILabel()
    var bodyLabel = UILabel()
    
    var object: ObjectEntity? {
        didSet {
            if let title = object?.title {
                titleLabel.text = title
            }
            if let body = object?.body {
                bodyLabel.text = body
            }
        }
    }
    
    var layout: ListLayout? {
        didSet {
            titleLabel.textColor = layout?.titleColor
            bodyLabel.textColor = layout?.bodyColor
        }
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .clear
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        addSubview(titleLabel)
        
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        bodyLabel.numberOfLines = 0
        bodyLabel.textAlignment = .center
        addSubview(bodyLabel)
        
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14).isActive = true
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 14).isActive = true
        
        bodyLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14).isActive = true
        bodyLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14).isActive = true
        bodyLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -14).isActive = true
        bodyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 14).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
