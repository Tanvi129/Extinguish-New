//
//  AuditorDetailViewController.swift
//  Extinguish-New
//
//  Created by Thrishalini on 23/03/23.
//

import UIKit

class AuditorDetailViewController: UIViewController {
    @IBOutlet var auditorPhoto: UIImageView!
    
    @IBOutlet var auditorName: UILabel!
    
    
    @IBOutlet var auditorID: UILabel!
    
    
    @IBOutlet var emailLabel: UILabel!
    
    @IBOutlet var locLabel: UILabel!
    
    @IBOutlet var contactLabel: UILabel!
    
    var auditorList = DataModel().getAuditorList()
    var index:Int = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        auditorPhoto.image = UIImage (named : auditorList[index].profilePic)
        auditorName.text = auditorList[index].name
        auditorID.text = auditorList[index].empID
        emailLabel.text = auditorList[index].email
        locLabel.text = auditorList[index].location
        contactLabel.text = auditorList[index].phoneNumber
        
        
//        auditorPhoto?.layer.borderWidth = 1
//        auditorPhoto?.layer.cornerRadius = 20
//        auditorPhoto?.layer.masksToBounds = false
//        auditorPhoto?.clipsToBounds = true
//        auditorPhoto.corners(_radius: 20)
        

        
        
        
        emailLabel.shadow(radius: 3, color: UIColor.black, offset: CGSize(width: 1, height: 1), opacity: 0.2)
        locLabel.shadow(radius: 3, color: UIColor.black, offset: CGSize(width: 1, height: 1), opacity: 0.2)
        contactLabel.shadow(radius: 3, color: UIColor.black, offset: CGSize(width: 1, height: 1), opacity: 0.2)
        
        
        auditorPhoto?.layer.borderColor = UIColor.black.cgColor
        auditorPhoto.layer.borderColor = UIColor.black.cgColor
        locLabel.layer.borderColor = UIColor.black.cgColor
        contactLabel.layer.borderColor = UIColor.black.cgColor
        
        auditorPhoto?.layer.borderWidth = 1
        emailLabel.layer.borderWidth = 1
        locLabel.layer.borderWidth = 1
        contactLabel.layer.borderWidth = 1
        
        
        auditorPhoto.corners(_radius: 20)
        emailLabel.corners(_radius: 20)
        locLabel.corners(_radius: 20)
        contactLabel.corners(_radius: 20)
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
