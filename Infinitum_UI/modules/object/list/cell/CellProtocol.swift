//
//  CellProtocol.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 11/07/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import UIKit

protocol CellProtocol: UITableViewCell {
    
    var layout: ListLayout? { get set }
    
    var object: ObjectEntity? { get set }
    
}
