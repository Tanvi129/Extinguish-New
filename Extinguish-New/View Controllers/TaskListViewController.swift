//
//  ViewController.swift
//  Extinguish-New
//
//  Created by Tanvi Gupta on 06/03/23.
//

import UIKit

class TaskListViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    var taskList = DataModel().taskList
    
    
    @IBOutlet var taskListTable: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Task Summary"
        self.taskListTable.dataSource = self
        self.taskListTable.delegate = self
        configureTitleTabItems()
        // Do any additional setup after loading the view.
    }
    
    private func configureTitleTabItems(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "note.text"), style: .done, target: self, action: nil)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "rectangle.portrait.and.arrow.right"), style: .done, target: self, action: nil)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return taskList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = self.taskListTable.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath)
            let cityCell = cell as? TaskTableViewCell
            let city = self.taskList[indexPath.section]
            cityCell?.auditorID.text = city.auditorAssigned?.empID
            cityCell?.taskID.text = city.taskID
            
            cell.backgroundColor = UIColor.white
            cell.layer.borderColor = UIColor.black.cgColor
            
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 8
            cell.clipsToBounds = true
            
            return cell
            
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.10
        
    }
    
}
