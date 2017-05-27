//
//  ViewController.swift
//  BlogExample-AssociatedType
//
//  Created by Nguyen Tuan on 5/27/17.
//  Copyright © 2017 helo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var dataSource: [CustomDataSource1] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        CustomDataSource1.register(tableView: tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        //clear empty cell
        tableView.tableFooterView = UIView()
        dataSource.append(CustomDataSource1(type: .type1))
        dataSource.append(CustomDataSource1(type: .type2))
        
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let content = dataSource[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: content.cellIdentifier())!
        
        if let signUpCell = cell as? BECellRender {
            signUpCell.renderCell(data: content)
        }
        
        return cell
    }
}

