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
            profilePic:"profilepic1",
                empID: "12345",
                name: "Tanvi Gupta",
                phoneNumber: "9557146955",
                email: "tanvigupta129@gmail.com",
                location: "None"
                ),
        Auditor(profilePic: "profilepic1",
                empID: "12345",
                name: "Vansh Agarwal",
                phoneNumber: "9557146955",
                email: "tanvigupta129@gmail.com",
                location: "None"
               ),
        Auditor(profilePic: "profilepic1",
                empID: "12345",
                name: "Pratham Pandey",
                phoneNumber: "9557146955",
                email: "tanvigupta129@gmail.com",
                location: "None"
               ),
        Auditor(profilePic: "profilepic1",
                empID: "12345",
                name: "Thrishalini",
                phoneNumber: "9557146955",
                email: "tanvigupta129@gmail.com",
                location: "None"
               )
    ]
    
    var taskList = [
        Task(taskID: "XxzzYy", name: "Panda Task",date: Date(), location: "Mumbai", taskStatus: Status.completed, auditorAssigned: Auditor(
            profilePic:"profilepic1",
            empID: "12345",
            name: "Tanvi Gupta",
            phoneNumber: "9557146955",
            email: "tanvigupta129@gmail.com",
            location: "None"
        ), startTime: "8:00 AM", endTime: "8:30 PM", distributorDetails: DistributorDetails(distributorName: "Vansh Agarwal", distributorContact: "9412436699", distributorAddress: "Mumbai"), companyDetails: CompanyDetails(companyName: "Cipla", salesOfficerName: "Mr M P Gupta", salesOfficerContact: "9412436699")
            ),
        Task(taskID: "ZzxxyV", name: "Panda Task", date: Date(), location: "Mumbai", taskStatus: Status.completed, auditorAssigned: Auditor(
            profilePic:"profilepic1",
                empID: "12345",
                name: "Tanvi Gupta",
                phoneNumber: "9557146955",
                email: "tanvigupta129@gmail.com",
                location: "None"
                ), startTime: "8:00 AM", endTime: "8:30 PM", distributorDetails: DistributorDetails(distributorName: "Vansh Agarwal", distributorContact: "9412436699", distributorAddress: "Mumbai"), companyDetails: CompanyDetails(companyName: "Cipla", salesOfficerName: "Mr M P Gupta", salesOfficerContact: "9412436699")),
        Task(taskID: "WwCcztT", name: "Panda Task", date: Date(), location: "Mumbai", taskStatus: Status.completed, auditorAssigned: Auditor(
            profilePic:"profilepic1",
                empID: "12345",
                name: "Tanvi Gupta",
                phoneNumber: "9557146955",
                email: "tanvigupta129@gmail.com",
                location: "None"
                ), startTime: "8:00 AM", endTime: "8:30 PM", distributorDetails: DistributorDetails(distributorName: "Vansh Agarwal", distributorContact: "9412436699", distributorAddress: "Mumbai"), companyDetails: CompanyDetails(companyName: "Cipla", salesOfficerName: "Mr M P Gupta", salesOfficerContact: "9412436699")),
        Task(taskID: "VvXXty", name: "Panda Task", date: Date(), location: "Mumbai", taskStatus: Status.completed, auditorAssigned: Auditor(
            profilePic:"profilepic1",
                empID: "12345",
                name: "Tanvi Gupta",
                phoneNumber: "9557146955",
                email: "tanvigupta129@gmail.com",
                location: "None"
        ), startTime: "8:00 AM", endTime: "8:30 PM", distributorDetails: DistributorDetails(distributorName: "Vansh Agarwal", distributorContact: "9412436699", distributorAddress: "Mumbai"), companyDetails: CompanyDetails(companyName: "Cipla", salesOfficerName: "Mr M P Gupta", salesOfficerContact: "9412436699")
            )
    
    ]
    
    
}
