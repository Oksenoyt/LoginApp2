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
    
    private let user = "qwe"
    private let password = "asd"
    
    private let overlayButton = UIButton(type: .custom)
    private let eyeEmpty = UIImage(systemName: "eye")
    private let eyeSlash = UIImage(systemName: "eye.slash")
    private var passwordView = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupEyeButton()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.greetings = userTextField.text
        guard let tapBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tapBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let commonInfoVC = viewController as? CommonInfoViewController {
                commonInfoVC.view.backgroundColor = .systemRed
            } else if let hobbyVC = viewController as? HobbyViewController {
                hobbyVC.view.backgroundColor = .systemBlue
            } else if let photoVC = viewController as? PhotoViewController {
                photoVC.view.backgroundColor = .systemCyan
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTextField.text?.removeAll()
        passwordTextField.text?.removeAll()
    }
    
    @IBAction func loginAction() {
        guard userTextField.text == user, passwordTextField.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct username and password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func getUserName() {
        showAlert(title: "User name:", message: user)
    }
    
    @IBAction func getPassword() {
        showAlert(title: "Password:", message: password)
    }
    
    @IBAction func togglePassordView(_ sender: Any) {
        passwordTextField.isSecureTextEntry.toggle()
        passwordView = !passwordView
        passwordView
        ? overlayButton.setImage(eyeEmpty, for: .normal)
        : overlayButton.setImage(eyeSlash, for: .normal)
    }
    
    private func setupEyeButton() {
        overlayButton.setImage(eyeSlash, for: .normal)
        overlayButton.alpha = 0.4
        overlayButton.addTarget(self, action: #selector(togglePassordView), for: .touchUpInside)
        passwordTextField.rightView = overlayButton
        passwordTextField.rightViewMode = .always
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text?.removeAll()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


