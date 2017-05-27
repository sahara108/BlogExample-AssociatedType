//
//  CustomDataSource1Type2.swift
//  BlogExample-AssociatedType
//
//  Created by Nguyen Tuan on 5/27/17.
//  Copyright © 2017 helo. All rights reserved.
//

import UIKit

class CustomDataSource1Type2: UITableViewCell, BECellRenderImpl {

    typealias CellData = CustomDataSource1
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func renderCell(data: CustomDataSource1) {
        //Start implementing your cell
    }
}
