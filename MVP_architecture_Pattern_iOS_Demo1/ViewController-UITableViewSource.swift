//
//  ViewController-UITableViewSource.swift
//  MVP_architecture_Pattern_iOS_Demo1
//
//  Created by Harish on 11/28/18.
//  Copyright © 2018 Harish. All rights reserved.
//

import UIKit
extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.staffList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "identifier")
        let staff = self.staffList[indexPath.row]
        cell.textLabel?.text = staff.firstName + " " + staff.lastName
        cell.detailTextLabel?.text = "\(staff.role)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.staffList[indexPath.row])
    }
}
