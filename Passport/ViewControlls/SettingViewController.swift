//
//  SettingViewController.swift
//  Passport
//
//  Created by Marat Shagiakhmetov on 04.04.2021.
//

import UIKit

class SettingViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var educationTextField: UITextField!
    @IBOutlet weak var familyStatusTextField: UITextField!
    @IBOutlet weak var favoriteLessonsTextField: UITextField!
    @IBOutlet weak var favoriteSportTextField: UITextField!
    @IBOutlet weak var favoriteWriterTextField: UITextField!
    @IBOutlet weak var favoriteBooksTextField: UITextField!
    
    @IBOutlet weak var changeNameButton: UIButton!
    @IBOutlet weak var changeFirstNameButton: UIButton!
    @IBOutlet weak var changeAllButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setButtonColor()
    }
    
    @IBAction func changeNameActionButton() {
        
    }
    @IBAction func changeFirstNameActionButton() {
        
    }
    @IBAction func changeAllActionButton() {
        
    }
    
    private func setButtonColor() {
        changeNameButton.layer.borderWidth = 2
        changeNameButton.layer.borderColor = CGColor(
            red: 255,
            green: 105,
            blue: 180,
            alpha: 1
        )
        changeFirstNameButton.layer.borderWidth = 2
        changeFirstNameButton.layer.borderColor = CGColor(
            red: 255,
            green: 105,
            blue: 180,
            alpha: 1
        )
        changeAllButton.layer.borderWidth = 2
        changeAllButton.layer.borderColor = CGColor(
            red: 255,
            green: 105,
            blue: 180,
            alpha: 1
        )
    }
}

// MARK: - Work with keyboard
extension SettingViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case nameTextField:
            firstNameTextField.becomeFirstResponder()
        case firstNameTextField:
            yearTextField.becomeFirstResponder()
        case yearTextField:
            countryTextField.becomeFirstResponder()
        case countryTextField:
            educationTextField.becomeFirstResponder()
        case educationTextField:
            familyStatusTextField.becomeFirstResponder()
        case familyStatusTextField:
            favoriteLessonsTextField.becomeFirstResponder()
        case favoriteLessonsTextField:
            favoriteSportTextField.becomeFirstResponder()
        case favoriteSportTextField:
            favoriteWriterTextField.becomeFirstResponder()
        case favoriteWriterTextField:
            favoriteBooksTextField.becomeFirstResponder()
        default:
            changeAllActionButton()
        }
        return true
    }
}
