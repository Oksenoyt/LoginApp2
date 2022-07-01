//
//  ViewController.swift
//  LoginApp2
//
//  Created by Elenka on 01.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginAction() {
        let user = userTextField.text ?? ""
        let password = passwordTextField.text ?? ""
    }
    
}

