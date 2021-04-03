//
//  WelcomeViewController.swift
//  Passport
//
//  Created by Marat Shagiakhmetov on 31.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!

    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(user)"
        
    }
    
}
