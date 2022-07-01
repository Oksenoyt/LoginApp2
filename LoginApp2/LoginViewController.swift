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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.greetings = userTextField.text
    }

    @IBAction func loginAction() {
        guard userTextField.text == "qwe" else {
            print("wrong login or password")
            showAlert(title: "Wrong login or password", message: "Please enter correct username and password")
            return
            }
        guard passwordTextField.text == "asd" else {
            print("wrong login or password")
            showAlert(title: "Wrong login or password", message: "Please enter correct username and password")
            return
            }
    }
}

//MARK - UIAlertController
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in self.passwordTextField.text = ""}
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
