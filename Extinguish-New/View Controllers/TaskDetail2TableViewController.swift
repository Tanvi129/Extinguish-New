//
//  TaskDetail2TableViewController.swift
//  Extinguish-New
//
//  Created by Tanvi Gupta on 30/03/23.
//

import UIKit

class TaskDetail2TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        taskName.text = "Panda Task"
        let cellOnScreen : [UITableViewCell] = [section1cell1,section2cell1,section3cell1,section3cell2 , section4cell1 , section5cell1 , section5cell2 , section6cell1 , section6cell2 , section7cell1 , section7cell2 , section8cell1]
        applyBorder(listofCells: cellOnScreen)
        
        let padding = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
        tableView.contentInset = padding
        tableView.rowHeight = UITableView.automaticDimension
////        tableView.estimatedRowHeight = 44 // or any other value you want
//        
//        // You can also adjust the width of the table view itself if you want to
//        tableView.frame = CGRect(x: tableView.frame.origin.x, y: tableView.frame.origin.y, width: 250, height: tableView.frame.size.height)
//        tableView.scrollIndicatorInsets = padding

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

   
    @IBOutlet var taskName: UILabel!
   
    @IBOutlet var section2cell1: UITableViewCell!
   
    @IBOutlet var section1cell1: UITableViewCell!
    
    @IBOutlet var section3cell2: UITableViewCell!
    
    @IBOutlet var section3cell1: UITableViewCell!
    
    @IBOutlet var section4cell1: UITableViewCell!
    
    @IBOutlet var section5cell1: UITableViewCell!
    
    
    @IBOutlet var section5cell2: UITableViewCell!
    
    @IBOutlet var section6cell1: UITableViewCell!
    
    
    @IBOutlet var section6cell2: UITableViewCell!
    
    @IBOutlet var section7cell1: UITableViewCell!
    
    @IBOutlet var section7cell2: UITableViewCell!
    
    @IBOutlet var section8cell1: UITableViewCell!
    
   
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        0.01
    }
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        0.01
    }
    
    func addborder(cell: UITableViewCell){
        cell.layer.borderColor = UIColor.black.cgColor
        
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
        
    }
    
    func applyBorder(listofCells: [UITableViewCell]){
        for cell in listofCells {
            addborder(cell: cell)
        }
    }
}
