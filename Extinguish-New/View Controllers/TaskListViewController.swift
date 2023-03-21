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
        view.addSubview(floatingButton)

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
        cityCell?.status.text = statusText(status: city.taskStatus)
            
        cell.backgroundColor = color(status: city.taskStatus)
            cell.layer.borderColor = UIColor.black.cgColor
            
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 8
            cell.clipsToBounds = true
            
            return cell
            
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.10
        
    }
    
    func color(status: Status) -> UIColor {
        if (status == Status.completed){
            return UIColor(rgb: 0xECF2FF)
        }
        if (status == Status.inProgress){
            return UIColor(rgb: 0xE1F3F4)
        }
        if (status == Status.unassigned){
            return UIColor(rgb: 0xFFF3F0)
        }
        return UIColor.white

    }
    
    func statusText(status: Status) -> String {
        if (status == Status.completed){
            return "Completed -"
        }
        if (status == Status.inProgress){
            return "In Progress -"
        }
        if (status == Status.unassigned){
            return "Unassigned"
        }
        return "Unable to load"
    }
    
    private let floatingButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
//        button.layer.masksToBounds = true
        button.layer.cornerRadius = 30
        button.backgroundColor = UIColor(rgb: 0x0A2647)
        let image = UIImage(systemName: "plus" , withConfiguration: UIImage.SymbolConfiguration(pointSize: 32, weight: .medium))
        button.setImage(image, for: .normal)
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3
        return button
    }()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        floatingButton.frame = CGRect(x: view.frame.size.width - 70, y: view.frame.size.height - 150 , width: 60, height: 60 )
        

    }
}
