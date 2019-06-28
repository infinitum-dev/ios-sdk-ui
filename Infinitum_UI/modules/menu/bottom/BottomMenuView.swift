//
//  BottomMenuView.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 27/06/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import UIKit

class BottomMenuView: UIView {
    
    var tabBar: UITabBar!
    var params: BottomMenuParams? {
        didSet {
            tabBar.backgroundColor = params!.menuLayout.backgroundColor
            tabBar.tintColor = params!.menuLayout.tintColor
            
            var arrayItems = [UITabBarItem]()
            for item in params!.listOptions {
                let tabItem = UITabBarItem(title: item.title, image: item.image, selectedImage: item.selectedImage)
                tabItem.tag = item.id
                arrayItems.append(tabItem)
            }
            tabBar.setItems(arrayItems, animated: true)
            tabBar.selectedItem = tabBar.items![0]
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        translatesAutoresizingMaskIntoConstraints = false
        
        tabBar = UITabBar()
        tabBar.translatesAutoresizingMaskIntoConstraints = false
        tabBar.itemPositioning = .centered
        tabBar.delegate = self
        addSubview(tabBar)
        
        createConstraints()
    }
    
    private func createConstraints() {
        tabBar.topAnchor.constraint(equalTo: topAnchor).isActive = true
        tabBar.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        tabBar.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        tabBar.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
}

extension BottomMenuView: UITabBarDelegate {
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        params!.callback.itemSelected(id: item.tag)
    }
}
