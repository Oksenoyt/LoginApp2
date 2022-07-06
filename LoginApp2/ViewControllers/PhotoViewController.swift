//
//  PhotoViewController.swift
//  LoginApp2
//
//  Created by Elenka on 05.07.2022.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var userPhotoImageView: UIImageView!
    
    var userPhoto: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userPhotoImageView.image = userPhoto
    }
}
