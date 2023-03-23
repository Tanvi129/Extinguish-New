//
//  LoginScreenViewController.swift
//  Extinguish-New
//
//  Created by Tanvi Gupta on 23/03/23.
//

import UIKit

class LoginScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.setUnderLine()
        passwordTextField.setUnderLine()
        underLinedTextfield()
        loginButton.layer.cornerRadius = 15
        signUpButton.layer.cornerRadius = 15

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet var loginButton: UIButton!
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var signUpButton: UIButton!
    @IBAction func signUpButton(_ sender: Any) {
    }
    @IBOutlet var passwordTextField: UITextField!
    
    func underLinedTextfield(){
        emailTextField.leftViewMode = UITextField.ViewMode.always
        passwordTextField.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        let imageView2 = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        let image = UIImage(systemName: "mail.fill")
        let image2 = UIImage(systemName: "lock.fill")
        
        imageView.image = image
        imageView2.image = image2
        imageView.tintColor = UIColor.black
        imageView2.tintColor = UIColor.black
        emailTextField.leftView = imageView
        passwordTextField.leftView = imageView2

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
