//
//  BECell.swift
//  BlogExample-AssociatedType
//
//  Created by Nguyen Tuan on 5/27/17.
//  Copyright © 2017 helo. All rights reserved.
//

import UIKit

protocol BECellRender {
    func renderCell(data: BECellDataSource)
}

protocol BECellRenderImpl: BECellRender {
    associatedtype CellData
    func renderCell(data: CellData)
}

extension BECellRender where Self: BECellRenderImpl {
    func renderCell(data: BECellDataSource) {
        if let d = data as? CellData {
            renderCell(data: d)
        }
    }
}
