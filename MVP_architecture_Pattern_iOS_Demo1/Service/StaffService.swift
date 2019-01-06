//
//  StaffService.swift
//  MVP_architecture_Pattern_iOS_Demo1
//
//  Created by Harish on 11/28/18.
//  Copyright © 2018 Harish. All rights reserved.
//

import Foundation
class StaffService{
    func getStaff(callback:@escaping ([Staff]) ->Void){
        let staffList = [Staff(firstName :"Harish",lastName : "Yadav", role : 1),Staff(firstName :"Akshay",lastName : "gadhge", role : 2),Staff(firstName: "Parag", lastName: "Zambare", role: 3),Staff(firstName: "Atul", lastName: "Patil", role: 4),Staff(firstName: "Vivek", lastName: "Jadhav", role: 5),Staff(firstName: "Swpnil", lastName: "Patil", role: 6),Staff(firstName: "Sushant", lastName: "Patil", role: 7),Staff(firstName: "Nitin", lastName: "Patil", role: 8),Staff(firstName: "Akshay", lastName: "Bhole", role: 9),Staff(firstName: "Vipin", lastName: "Unknown", role: 10),Staff(firstName :"Harish",lastName : "Yadav", role : 1),Staff(firstName :"Akshay",lastName : "gadhge", role : 2),Staff(firstName: "Parag", lastName: "Zambare", role: 3),Staff(firstName: "Atul", lastName: "Patil", role: 4),Staff(firstName: "Vivek", lastName: "Jadhav", role: 5),Staff(firstName: "Swpnil", lastName: "Patil", role: 6),Staff(firstName: "Sushant", lastName: "Patil", role: 7),Staff(firstName: "Nitin", lastName: "Patil", role: 8),Staff(firstName: "Akshay", lastName: "Bhole", role: 9),Staff(firstName: "Vipin", lastName: "Unknown", role: 10)]
        let dealTime = DispatchTime.now() + 2
        DispatchQueue.main.asyncAfter(deadline: dealTime) {
            callback(staffList)
        }
    }
}
