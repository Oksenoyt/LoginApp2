//
//  HobbyViewController.swift
//  LoginApp2
//
//  Created by Elenka on 05.07.2022.
//

import UIKit

class HobbyViewController: UIViewController {
    
    @IBOutlet weak var hobbyLabelOne: UILabel!
    @IBOutlet weak var hobbyLabelTwo: UILabel!
    @IBOutlet weak var hobbyLabelThree: UILabel!
    @IBOutlet weak var hobbyLabelFour: UILabel!
    
    var hobbyOne: String!
    var hobbyTwo: String!
    var hobbyThree: String!
    var hobbyFour: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hobbyLabelOne.text = hobbyOne
        hobbyLabelTwo.text = hobbyTwo
        hobbyLabelThree.text = hobbyThree
        hobbyLabelFour.text = hobbyFour
    }
}
