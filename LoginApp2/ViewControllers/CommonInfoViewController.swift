//
//  WelcomeViewController.swift
//  LoginApp2
//
//  Created by Elenka on 01.07.2022.
//

import UIKit

class CommonInfoViewController: UIViewController {
    
    @IBOutlet weak var greetingsLabel: UILabel!
    @IBOutlet weak var basicInfoLabel: UILabel!
    
    var greetings: String!
    var basicInfo: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingsLabel.text = "Welcome, \(greetings ?? "User")!"
        basicInfoLabel.text = "Информация о пользователе:\n\n\(basicInfo ?? "отсутствует")"
    }
}
