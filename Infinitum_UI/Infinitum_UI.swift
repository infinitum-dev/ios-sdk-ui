//
//  Infinitum_UI.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 18/06/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import Foundation
import UIKit

public class Infinitum_UI {
    
    public static func getObjectList(params: ListParams) -> UIViewController {
        let controller = ListViewController()
        controller.params = params
        return controller
    }
    
    public static func getObjectDetail(params: DetailParams) -> UIViewController {
        let controller = DetailViewController()
        controller.params = params
        return controller
    }
    
    public static func getObjectSlideshow(params: SlideshowParams) -> UIViewController {
        let controller = SlideshowViewController()
        controller.params = params
        return controller
    }
    
    public static func getMenuBottom(params: BottomMenuParams) -> UIView {
        let view = BottomMenuView()
        view.params = params
        return view
    }
    
}
