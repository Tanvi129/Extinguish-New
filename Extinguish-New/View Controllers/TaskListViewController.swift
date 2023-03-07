//
//  ViewController.swift
//  Extinguish-New
//
//  Created by Tanvi Gupta on 06/03/23.
//

import UIKit

class TaskListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Task Summary"
        configureTitleTabItems()
        // Do any additional setup after loading the view.
    }
    
    private func configureTitleTabItems(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "note.text"), style: .done, target: self, action: nil)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "rectangle.portrait.and.arrow.right"), style: .done, target: self, action: nil)
       
        }


}

