//
//  TaskSummaryModel.swift
//  Extinguish-New
//
//  Created by Thrishalini on 07/03/23.
//

import Foundation

struct Task {
    var taskID : String
    var name : String
    var date : Date
    var location : String
    var taskStatus : Status
    var auditorAssigned : Auditor?
    var startTime : String
    var endTime : String
    var distributorDetails : DistributorDetails
    var companyDetails : CompanyDetails
    var subtask : [Subtask]?
    
    
}

enum Status {
    case completed
    case inProgress
    case unassigned
}


