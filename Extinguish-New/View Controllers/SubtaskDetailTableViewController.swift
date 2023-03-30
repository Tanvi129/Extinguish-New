//
//  SubtaskDetailTableViewController.swift
//  Extinguish-New
//
//  Created by Tanvi Gupta on 29/03/23.
//

import UIKit

struct CellData {
    var opened : Bool
}

class SubtaskDetailTableViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    

    @IBOutlet var subtaskListTable: UITableView!
    // MARK: - Table view data source
    var subtaskList = [CellData(opened: false),CellData(opened: false),CellData(opened: false),CellData(opened: false),CellData(opened: false)]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.subtaskListTable.dataSource = self
        self.subtaskListTable.delegate = self

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return subtaskList.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if subtaskList[section].opened == true {
            return 2
        }else{
            return 1
        }
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = subtaskListTable.dequeueReusableCell(withIdentifier: "subtaskTitle", for: indexPath)
            let subtaskTitleCell = cell as? SubtaskTitleTableViewCell
            let subtask = self.subtaskList[indexPath.section]
            if subtask.opened == false {
                subtaskTitleCell?.expandButton.image = UIImage(systemName: "plus")
            }else{
                subtaskTitleCell?.expandButton.image = UIImage(systemName: "minus")
            }
            
            cell.layer.borderColor = UIColor.black.cgColor
            
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 8
            cell.clipsToBounds = true
            return cell
        }else {
            let cell = subtaskListTable.dequeueReusableCell(withIdentifier: "subtaskDetail", for: indexPath)
            let subtaskDetailCell = cell as? SubtaskDetailTableViewCell
            cell.layer.borderColor = UIColor.black.cgColor
            
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 8
            cell.clipsToBounds = true
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if subtaskList[indexPath.section].opened == true {
            subtaskList[indexPath.section].opened = false
            let sections = IndexSet(integer: indexPath.section)
            tableView.reloadSections(sections, with: .none)
        }else{
            subtaskList[indexPath.section].opened = true
            let sections = IndexSet(integer: indexPath.section)
            tableView.reloadSections(sections, with: .none)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 64
        }else{
            return 568
        }

    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        1
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
