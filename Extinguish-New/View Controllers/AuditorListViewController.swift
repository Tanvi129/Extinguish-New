//
//  AuditorListViewController.swift
//  Extinguish-New
//
//  Created by Tanvi Gupta on 06/03/23.
//

import UIKit

class AuditorListViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{

    
    var auditorList = DataModel().auditorList
  

//    @IBOutlet var auditorPhoto: UIImageView!
    
    
    @IBOutlet var auditorListTable: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        configureTitleTabItems()
     
      

        self.auditorListTable.dataSource = self
        self.auditorListTable.delegate = self
        view.addSubview(floatingButton)

        // Do any additional setup after loading the view.
    }
//    profilePic.layer.cornerRadius = frame.height/2
//    profilePic.layer.masksToBounds = true
//    profilePic.layer.borderWidth = 1
//    profilePic.layer.borderColor = borderColor.cgColor
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
////        tableView.estimatedRowHeight = UITableView.automaticDimension
////         tableView.estimatedRowHeight = 90.0
//        return 90.0
//
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return auditorList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = auditorListTable.dequeueReusableCell(withIdentifier: "auditorDetail", for: indexPath)
        let cityCell = cell as? AuditorListTableViewCell
        let city = self.auditorList[indexPath.section]
        
        
//        let selectedIndexPaths = auditorListTable.indexPathsForSelectedRows
//        let rowIsSelected = selectedIndexPaths != nil && selectedIndexPaths!.contains(indexPath)
//        cell.imageView?.image = auditorList[indexPath.row].AuditorPic
        
        
        cityCell?.profilePic?.image = UIImage (named : city.profilePic)
        cityCell?.profilePic?.layer.cornerRadius = (cityCell?.profilePic?.frame.size.width)! / 2
        cityCell?.profilePic?.clipsToBounds = true
//        cityCell?.profilePic?.layer.masksToBounds = false
        
        cityCell?.profilePic?.layer.borderColor = UIColor.black.cgColor
        cityCell?.profilePic?.layer.borderWidth = 1
        cityCell?.auditorID?.text = "ID No - " + city.empID
        cityCell?.auditorName?.text = city.name
        
        cell.backgroundColor = UIColor(rgb: 0xECF2FF)
        cell.layer.borderColor = UIColor.black.cgColor
        
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.1
        
    }
   
//    private func configureTitleTabItems(){
//        navigationItem.leftBarButtonItem =
//        UIBarButtonItem(
//                        image: UIImage(systemName: "figure.stand"),
//                        style: .done,
//                        target: self,
//                        action: nil)
//
//        navigationItem.rightBarButtonItem =
//        UIBarButtonItem(
//                        image: UIImage(
//                        systemName: "rectangle.portrait.and.arrow.right"),
//                        style: .done,
//                        target: self,
//                        action: nil)
//
//        }
  

//
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

