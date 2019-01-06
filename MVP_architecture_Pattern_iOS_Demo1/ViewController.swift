//
//  ViewController.swift
//  MVP_architecture_Pattern_iOS_Demo1
//
//  Created by Harish on 11/28/18.
//  Copyright © 2018 Harish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    
    @IBOutlet weak var viewProgress: UIActivityIndicatorView!
    @IBOutlet weak var staffListTableView: UITableView!
    var staffList  = [Staff]()
    var presenter = StaffPresenter(staffService: StaffService())
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(view: self as StaffView)
        presenter.getStaffList()
    }
}

