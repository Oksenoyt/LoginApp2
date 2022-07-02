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
    
    let user = "qwe"
    let password = "asd"

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.greetings = userTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event) // не поняла что делает эта строка
        view.endEditing(true) // и что такое true or false результат при указании обоих одинаковый
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTextField.text?.removeAll()
        passwordTextField.text?.removeAll()
    }

    @IBAction func loginAction() {
        guard userTextField.text == user else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct username and password")
            passwordTextField.text?.removeAll()
            return
            }
        guard passwordTextField.text == password else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct username and password")
            passwordTextField.text?.removeAll()
            return
            }
    }

    @IBAction func getUserName() {
        showAlert(title: "User name:", message: user)
    }
    
    @IBAction func getPassword() {
        showAlert(title: "Password:", message: password)
    }
}

//MARK - UIAlertController
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
