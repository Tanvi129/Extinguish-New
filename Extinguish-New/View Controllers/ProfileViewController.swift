//
//  ProfileViewController.swift
//  Extinguish-New
//
//  Created by Tanvi Gupta on 06/03/23.
//

import UIKit

class ProfileViewController: UIViewController {

    
    @IBOutlet var nameTextField: UITextField!
    
    @IBOutlet var emailTextField: UITextField!

        
    @IBOutlet var managerIDTextField: UITextField!
        
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.setUnderLine()
        emailTextField.setUnderLine()
        managerIDTextField.setUnderLine()
        passwordTextField.setUnderLine()
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
