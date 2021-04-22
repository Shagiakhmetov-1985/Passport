//
//  SettingViewController.swift
//  Passport
//
//  Created by Marat Shagiakhmetov on 04.04.2021.
//

import UIKit
// MARK: - Outlets
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
    
    @IBOutlet weak var backgroundView: UIView!
    
    @IBOutlet weak var switchThemeOutlet: UISwitch!
    
    @IBOutlet weak var labelNightTheme: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setColor()
        
    }
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let _ = segue.destination as! UITabBarController
        if let photosVC = segue.destination as? PhotosViewController {
            photosVC.switchTheme = switchThemeOutlet.isOn
        }
    }
    // MARK: Actions
    @IBAction func changeNameActionButton() {
        
    }
    @IBAction func changeFirstNameActionButton() {
        
    }
    @IBAction func changeAllActionButton() {
        
    }
    @IBAction func switchTheme() {
        if switchThemeOutlet.isOn {
            nightTheme()
        } else {
            originalTheme()
        }
    }
    // MARK: Hide and show keyboard
    @IBAction func tap(_ sender: Any) {
        nameTextField.resignFirstResponder()
        firstNameTextField.resignFirstResponder()
        yearTextField.resignFirstResponder()
        countryTextField.resignFirstResponder()
        educationTextField.resignFirstResponder()
        familyStatusTextField.resignFirstResponder()
        favoriteLessonsTextField.resignFirstResponder()
        favoriteSportTextField.resignFirstResponder()
        favoriteWriterTextField.resignFirstResponder()
        favoriteBooksTextField.resignFirstResponder()
    }
    // MARK: Setup buttons
    private func setColor() {
        //buttons
        changeNameButton.layer.borderWidth = 2
        changeNameButton.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        changeNameButton.layer.cornerRadius = changeNameButton.frame.height / 3
        
        changeFirstNameButton.layer.borderWidth = 2
        changeFirstNameButton.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        changeFirstNameButton.layer.cornerRadius = changeNameButton.frame.height / 3
        
        changeAllButton.layer.borderWidth = 2
        changeAllButton.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        changeAllButton.layer.cornerRadius = changeNameButton.frame.height / 3
        //text fields
        nameTextField.layer.borderWidth = 2
        nameTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        firstNameTextField.layer.borderWidth = 2
        firstNameTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        yearTextField.layer.borderWidth = 2
        yearTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        countryTextField.layer.borderWidth = 2
        countryTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        educationTextField.layer.borderWidth = 2
        educationTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        familyStatusTextField.layer.borderWidth = 2
        familyStatusTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        favoriteLessonsTextField.layer.borderWidth = 2
        favoriteLessonsTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        favoriteSportTextField.layer.borderWidth = 2
        favoriteSportTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        favoriteWriterTextField.layer.borderWidth = 2
        favoriteWriterTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        favoriteBooksTextField.layer.borderWidth = 2
        favoriteBooksTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    }
    // MARK: Set night theme
    private func nightTheme() {
        //background
        backgroundView.backgroundColor = .black
        //buttons
        changeNameButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        changeFirstNameButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        changeAllButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        changeNameButton.layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        changeFirstNameButton.layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        changeAllButton.layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        changeNameButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        changeFirstNameButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        changeAllButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        //text fields
        nameTextField.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        firstNameTextField.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        yearTextField.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        countryTextField.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        educationTextField.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        familyStatusTextField.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        favoriteLessonsTextField.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        favoriteSportTextField.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        favoriteWriterTextField.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        favoriteBooksTextField.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        nameTextField.layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        firstNameTextField.layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        yearTextField.layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        countryTextField.layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        educationTextField.layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        familyStatusTextField.layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        favoriteLessonsTextField.layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        favoriteSportTextField.layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        favoriteWriterTextField.layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        favoriteBooksTextField.layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        //label
        labelNightTheme.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //switch
        switchThemeOutlet.onTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        switchThemeOutlet.thumbTintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        switchThemeOutlet.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    // MARK: Set original theme
    private func originalTheme() {
        //background
        backgroundView.backgroundColor = .white
        //buttons
        changeNameButton.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        changeFirstNameButton.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        changeAllButton.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        changeNameButton.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        changeFirstNameButton.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        changeAllButton.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        changeNameButton.setTitleColor(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), for: .normal)
        changeFirstNameButton.setTitleColor(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), for: .normal)
        changeAllButton.setTitleColor(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), for: .normal)
        //text fields
        nameTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        firstNameTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        yearTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        countryTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        educationTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        familyStatusTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        favoriteLessonsTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        favoriteSportTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        favoriteWriterTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        favoriteBooksTextField.layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        nameTextField.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        firstNameTextField.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        yearTextField.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        countryTextField.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        educationTextField.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        familyStatusTextField.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        favoriteLessonsTextField.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        favoriteSportTextField.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        favoriteWriterTextField.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        favoriteBooksTextField.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //label
        labelNightTheme.textColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        //switch
        switchThemeOutlet.onTintColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        switchThemeOutlet.thumbTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        switchThemeOutlet.tintColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    }
}

// MARK: - Work with keyboard
extension SettingViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("1")
        if textField == nameTextField {
            firstNameTextField.becomeFirstResponder()
        } else {
            changeAllActionButton()
        }
//        switch textField {
//        case nameTextField:
//            firstNameTextField.becomeFirstResponder()
//        case firstNameTextField:
//            yearTextField.becomeFirstResponder()
//        case yearTextField:
//            countryTextField.becomeFirstResponder()
//        case countryTextField:
//            educationTextField.becomeFirstResponder()
//        case educationTextField:
//            familyStatusTextField.becomeFirstResponder()
//        case familyStatusTextField:
//            favoriteLessonsTextField.becomeFirstResponder()
//        case favoriteLessonsTextField:
//            favoriteSportTextField.becomeFirstResponder()
//        case favoriteSportTextField:
//            favoriteWriterTextField.becomeFirstResponder()
//        case favoriteWriterTextField:
//            favoriteBooksTextField.becomeFirstResponder()
//        default:
//            changeAllActionButton()
//        }
        return true
    }
}
