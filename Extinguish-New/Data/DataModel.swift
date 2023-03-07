//
//  DataModel.swift
//  Extinguish-New
//
//  Created by Thrishalini on 07/03/23.
//



import Foundation
import UIKit

class DataModel {
    
    var auditorList = [
        Auditor(
                profilPic:"profilepic1",
                empID: "12345",
                name: "Tanvi Gupta",
                phoneNumber: "9557146955",
                email: "tanvigupta129@gmail.com"
                ),
        Auditor(profilPic: "profilepic1",
                empID: "12345",
                name: "Vansh Agarwal",
                phoneNumber: "9557146955",
                email: "tanvigupta129@gmail.com"
               ),
        Auditor(profilPic: "profilepic1",
                empID: "12345",
                name: "Pratham Pandey",
                phoneNumber: "9557146955",
                email: "tanvigupta129@gmail.com"
               ),
        Auditor(profilPic: "profilepic1",
                empID: "12345",
                name: "Thrishalini",
                phoneNumber: "9557146955",
                email: "tanvigupta129@gmail.com"
               )
    ]
    
    var taskSummaryBasicDatas : [taskSummaryBasicData] =
    [taskSummaryBasicData(taskID: "zxzabsd",priority: "Immediate",location: "Nungumbakam"),
     taskSummaryBasicData(taskID: "3vXrXv",priority: "Normal",location: "Chengalpet"),
     taskSummaryBasicData(taskID: "4yyy5if",priority: "Normal",location: "Triplicane"),
     taskSummaryBasicData(taskID: "dy65vko",priority: "Normal",location: "Mylapore"),
     taskSummaryBasicData(taskID: "dy65vko",priority: "Normal",location: "Mylapore"),
     taskSummaryBasicData(taskID: "dy65vko",priority: "Normal",location: "Mylapore"),
     taskSummaryBasicData(taskID: "dy65vko",priority: "Normal",location: "Mylapore"),
     taskSummaryBasicData(taskID: "dy65vko",priority: "Normal",location: "Mylapore")
     
    ]
    
}
