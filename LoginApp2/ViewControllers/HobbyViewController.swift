//
//  HobbyViewController.swift
//  LoginApp2
//
//  Created by Elenka on 05.07.2022.
//

import UIKit

class HobbyViewController: UIViewController {

    @IBOutlet weak var hobbyLabel: UILabel!
    
    var hobby: [Hobby]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hobbyLabel.text = hobby.description
    }
}
