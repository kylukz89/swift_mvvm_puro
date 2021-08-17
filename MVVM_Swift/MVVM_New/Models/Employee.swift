 

import Foundation

// MARK: - Welcome
struct Employees: Decodable {
    let status: String
    let data: [EmployeeData]
}

// MARK: - Datum
struct EmployeeData: Decodable {
    let id: Int
    let employeeName: String
    let employeeSalary: Int
    let employeeAge: Int
    let profileImage: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}
