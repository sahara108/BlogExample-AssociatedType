//
//  CustomDataSource1.swift
//  BlogExample-AssociatedType
//
//  Created by Nguyen Tuan on 5/27/17.
//  Copyright © 2017 helo. All rights reserved.
//

import UIKit

struct CustomDataSource1: BECellDataSource {
    enum cellType {
        case type1
        case type2
        
        func cellIdentifier() -> String {
            switch self {
            case .type1:
                return "CustomDataSource1Type1"
            default:
                return "CustomDataSource2Type2"
            }
        }
        
        func nib() -> UINib {
            switch self {
            case .type1:
                return UINib(nibName: "CustomDataSource1Type1", bundle: nil)
            default:
                return UINib(nibName: "CustomDataSource1Type2", bundle: nil)
            }
        }
    }
    
    let type: cellType
    
    func cellIdentifier() -> String {
        return type.cellIdentifier()
    }
    
    static func register(tableView: UITableView) {
        tableView.register(cellType.type2.nib(), forCellReuseIdentifier: cellType.type2.cellIdentifier())
        tableView.register(cellType.type1.nib(), forCellReuseIdentifier: cellType.type1.cellIdentifier())
    }
}
