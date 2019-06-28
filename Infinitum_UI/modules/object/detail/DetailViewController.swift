//
//  DetailViewController.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 21/06/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import Foundation


class DetailViewController: UIViewController {
    
    var params: DetailParams!
    
    var imageView: UIImageView?
    var titleLabel: UILabel?
    var bodyLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = params.layout.background
        
        imageView = UIImageView(image: params.object.image)
        imageView?.translatesAutoresizingMaskIntoConstraints = false
        imageView?.contentMode = .scaleAspectFit
        view.addSubview(imageView!)
        
        titleLabel = UILabel()
        titleLabel?.translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        titleLabel?.numberOfLines = 0
        titleLabel?.text = params.object.title
        titleLabel?.textAlignment = .center
        titleLabel?.textColor = params.layout.titleColor
        view.addSubview(titleLabel!)
        
        bodyLabel = UILabel()
        bodyLabel?.translatesAutoresizingMaskIntoConstraints = false
        bodyLabel?.numberOfLines = 0
        bodyLabel?.text = params.object.body
        bodyLabel?.textAlignment = .center
        bodyLabel?.textColor = params.layout.bodyColor
        view.addSubview(bodyLabel!)
        
        imageView?.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14).isActive = true
        imageView?.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView?.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        titleLabel!.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14).isActive = true
        titleLabel!.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14).isActive = true
        titleLabel!.topAnchor.constraint(equalTo: imageView!.bottomAnchor, constant: 14).isActive = true
        
        bodyLabel!.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14).isActive = true
        bodyLabel!.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14).isActive = true
        bodyLabel!.topAnchor.constraint(equalTo: titleLabel!.bottomAnchor, constant: 14).isActive = true
    }
}
