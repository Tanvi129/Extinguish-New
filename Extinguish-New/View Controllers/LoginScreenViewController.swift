//
//  LoginScreenViewController.swift
//  Extinguish-New
//
//  Created by Tanvi Gupta on 23/03/23.
//

import UIKit
import Firebase
import FirebaseAuth

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
    
    
    
    @IBAction func login(_ sender: Any) {
        Auth.auth().signIn(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!) { (authResult, error) in
          if let authResult = authResult {
            let user = authResult.user
            print("User has Signed In")
            self.performSegue(withIdentifier: "mainEntry", sender: nil)
            
          }
          if let error = error {
              print("Cant Sign in user:")
          }
        }
          }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


