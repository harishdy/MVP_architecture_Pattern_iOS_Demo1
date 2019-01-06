//
//  StaffPresenter.swift
//  MVP_architecture_Pattern_iOS_Demo1
//
//  Created by Harish on 11/28/18.
//  Copyright © 2018 Harish. All rights reserved.
//

import Foundation
class StaffPresenter : NSObject{
    private let staffService : StaffService
    weak private var staffView : StaffView?
    
    init(staffService :StaffService){
        self.staffService = staffService
    }
    func attachView(view : StaffView){
        self.staffView = view
    }
    func detachView(){
        staffView = nil
    }
    func getStaffList(){
        staffView?.startLoading()
        staffService.getStaff { [weak self] list in
            self?.staffView?.stopLoading()
            self?.staffView?.showData(list: list)
        }
    }
}
