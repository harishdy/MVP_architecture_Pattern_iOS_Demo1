//
//  ViewController-StaffView.swift
//  MVP_architecture_Pattern_iOS_Demo1
//
//  Created by Harish on 11/28/18.
//  Copyright © 2018 Harish. All rights reserved.
//

import Foundation
extension ViewController: StaffView{
    func startLoading() {
        self.viewProgress.startAnimating()
        self.viewProgress.isHidden = false
    }
    
    func stopLoading() {
        self.viewProgress.stopAnimating()
        self.viewProgress.isHidden = true
    }
    
    func showData(list: [Staff]) {
        self.staffList = list
        self.staffListTableView.reloadData()
    }
    
    
}
