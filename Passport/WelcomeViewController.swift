//
//  WelcomeViewController.swift
//  Passport
//
//  Created by Marat Shagiakhmetov on 31.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!

    var login: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else {return}
        welcomeLabel.text = "Welcome, \(login)"
        
    }
    @IBAction func logOutActionButton() {
        dismiss(animated: true)
    }
    
}
