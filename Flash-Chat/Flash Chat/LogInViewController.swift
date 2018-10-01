//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit
import Firebase
import SVProgressHUD

class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    @IBAction func logInPressed(_ sender: AnyObject) {

		SVProgressHUD.show()
        
        //TODO: Log in the user
		Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
			if let error = error {
				print(error)
			} else {
				print("User Signed In Successfully! ✅")
				
				SVProgressHUD.dismiss()
				
				self.performSegue(withIdentifier: "goToChat", sender: self)
				
			}
		}
        
    }
    
}  
