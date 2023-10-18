//
//  ViewController.swift
//  iosTrainingDay3
//
//  Created by ITBCA on 18/10/23.
//

import UIKit
import Alamofire

private let tableViewCell = "ProfileCell"

class ViewController: UIViewController {
    private var personJobEntityList:[PersonJobEntity] = []

    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "PersonJobViewCell", bundle: nil), forCellReuseIdentifier: tableViewCell)
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = 100
        tableView.allowsFocus = false
        tableView.estimatedRowHeight = 500
        
        var personJobResponseDataList:[PersonJobDataResponseModel] = []
        
        let response = AF.request("https://dummy.restapiexample.com/api/v1/employees", method: .get).response {
            (data) in
            print("STATUS CODE : " + String(data.response?.statusCode ?? 500))
            do {
                let result:PersonJobResponseModel = try JSONDecoder().decode(PersonJobResponseModel.self, from: data.data!)
                personJobResponseDataList = result.data
                for data in personJobResponseDataList {
                    self.personJobEntityList.append(PersonJobEntity(name: data.employeeName, age: String(data.employeeAge), salary: String(data.employeeSalary)))
                    print(data)
                }
                self.tableView.reloadData()
        
            } catch let jsonErr {
                print("FAILED : ERROR SERIALIZATION JSON ", jsonErr)
            }
        }
        
        

            
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personJobEntityList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewCell = tableView.dequeueReusableCell(withIdentifier: tableViewCell, for: indexPath) as! PersonJobViewCell
        
        viewCell.setValue(nameValue:  personJobEntityList[indexPath.row].name, ageValue: String(personJobEntityList[indexPath.row].age), salaryValue:  personJobEntityList[indexPath.row].salary)
        return viewCell
    }
    
}
