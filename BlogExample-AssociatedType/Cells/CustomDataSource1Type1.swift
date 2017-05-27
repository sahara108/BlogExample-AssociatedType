//
//  CustomDataSource1Type1.swift
//  BlogExample-AssociatedType
//
//  Created by Nguyen Tuan on 5/27/17.
//  Copyright © 2017 helo. All rights reserved.
//

import UIKit

class CustomDataSource1Type1: UITableViewCell, BECellRender {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func renderCell(data: BECellDataSource) {
        if let d = data as? CustomDataSource1 {
            // start render your cell here
        }
    }
}
