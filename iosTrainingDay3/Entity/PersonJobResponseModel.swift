//
//  PersonJobResponseModel.swift
//  iosTrainingDay3
//
//  Created by ITBCA on 18/10/23.
//

import Foundation

struct PersonJobResponseModel: Decodable {
    let status: String
    let message: String
    let data: [PersonJobDataResponseModel]
    
    enum CodingKeys: String, CodingKey {
        case status = "status"
        case message = "message"
        case data = "data"
    }
}

struct PersonJobDataResponseModel : Decodable {
    let id: Int
    let employeeName: String
    let employeeSalary: Int
    let employeeAge: Int
    let profileImage: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}
