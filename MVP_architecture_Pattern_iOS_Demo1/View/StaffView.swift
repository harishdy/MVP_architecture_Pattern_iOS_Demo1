//
//  StaffView.swift
//  MVP_architecture_Pattern_iOS_Demo1
//
//  Created by Harish on 11/28/18.
//  Copyright © 2018 Harish. All rights reserved.
//

import Foundation
protocol StaffView : NSObjectProtocol {
    func startLoading()
    func stopLoading()
    func showData(list : [Staff])
}
