//
//  AuditorListTableViewCell.swift
//  Extinguish-New
//
//  Created by Thrishalini on 07/03/23.
//



import UIKit

class AuditorListTableViewCell: UITableViewCell {

  
    
    
    @IBOutlet var profilePic: UIImageView!
    
    
    @IBOutlet var auditorID: UILabel!
    
    @IBOutlet var auditorName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profilePic.layer.cornerRadius = profilePic.frame.height/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
