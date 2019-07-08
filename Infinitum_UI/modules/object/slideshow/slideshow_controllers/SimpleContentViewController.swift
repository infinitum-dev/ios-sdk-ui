//
//  SimpleContentViewController.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 04/07/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import Foundation

class SimpleContentViewController: UIViewController, SlideshowPageController {
    
    var object: ObjectEntity!
    var layout: SlideshowLayout!
    
    var image: UIImageView!
    var titleLabel: UILabel!
    var bodyLabel: UILabel!
    var bottomContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createView()
    }
    
    fileprivate func createView() {
        image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.image = object.image
        view.addSubview(image)
        
        bottomContainer = UIView()
        bottomContainer.translatesAutoresizingMaskIntoConstraints = false
        bottomContainer.backgroundColor = layout.headerColor
        view.addSubview(bottomContainer)
        
        titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textColor = layout.titleColor
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .justified
        titleLabel.text = object.title
        bottomContainer.addSubview(titleLabel)
        
        bodyLabel = UILabel()
        bodyLabel.textAlignment = .justified
        bodyLabel.numberOfLines = 0
        bodyLabel.textColor = layout.bodyColor
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        bodyLabel.text = object.body
        bottomContainer.addSubview(bodyLabel)
        
        createConstraints()
    }
    
    private func createConstraints() {
        image.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        image.heightAnchor.constraint(equalToConstant: 200).isActive = true
        image.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        bottomContainer.topAnchor.constraint(equalTo: image.bottomAnchor).isActive = true
        bottomContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bottomContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        titleLabel.topAnchor.constraint(equalTo: bottomContainer.topAnchor, constant: 8).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: bottomContainer.leadingAnchor, constant: 16).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: bottomContainer.trailingAnchor, constant: -16).isActive = true
        
        bodyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        bodyLabel.leadingAnchor.constraint(equalTo: bottomContainer.leadingAnchor, constant: 16).isActive = true
        bodyLabel.trailingAnchor.constraint(equalTo: bottomContainer.trailingAnchor, constant: -16).isActive = true
        bodyLabel.bottomAnchor.constraint(equalTo: bottomContainer.bottomAnchor, constant: -12).isActive = true
    }
    
}
