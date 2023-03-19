//
//  TaskTableViewCell.swift
//  Extinguish-New
//
//  Created by Tanvi Gupta on 07/03/23.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet var taskID: UILabel!
    @IBOutlet var auditorID: UILabel!
}
