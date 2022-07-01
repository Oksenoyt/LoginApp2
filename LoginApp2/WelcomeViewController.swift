//
//  WelcomeViewController.swift
//  LoginApp2
//
//  Created by Elenka on 01.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var greetingsLabel: UILabel!
    
    var greetings: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingsLabel.text = "Welcome, \(greetings ?? "User")!"
    }
}

