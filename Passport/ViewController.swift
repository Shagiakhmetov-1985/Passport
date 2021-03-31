//
//  ViewController.swift
//  Passport
//
//  Created by Marat Shagiakhmetov on 31.03.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgonNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    let color1 = UIColor(red: 235/255, green: 55/255, blue: 75/255,
                         alpha: 1).cgColor
    let color2 = UIColor(red: 235/255, green: 122/255, blue: 235/255,
                         alpha: 1).cgColor
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInButton.layer.cornerRadius = logInButton.frame.height / 2
        logInButton.layer.borderWidth = 3
        logInButton.layer.borderColor = CGColor(red: 245,
                                                green: 245,
                                                blue: 245,
                                                alpha: 1)
        
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [color1, color2]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        loginTextField.returnKeyType = UIReturnKeyType.next
        passwordTextField.returnKeyType = UIReturnKeyType.done
        
        self.loginTextField.delegate = self
        self.passwordTextField.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as?
                WelcomeViewController else { return }
        welcomeVC.login = loginTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func logInActionButton() {
        guard let inputLogin = loginTextField.text,
              let inputPassword = passwordTextField.text,
              !inputLogin.isEmpty,
              !inputPassword.isEmpty else {
            showAlert(with: "Text field is empty",
                      and: "Please enter your name or password")
            return
        }
        
        guard loginTextField.text == "Marat",
              passwordTextField.text == "qwerty" else {
            showAlertCorrect(with: "Invalid login or password",
                      and: "Please, enter correct login and password")
            return
        }
    }
    
    @IBAction func forgonUserNameButton() {
        showAlert(with: "Hey!", and: "Your name is 'Marat' 😜")
    }
    
    @IBAction func forgonPasswordButton() {
        showAlert(with: "Are you okay?", and: "Your password is 'qwerty' 😇")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.loginTextField {
            self.loginTextField.resignFirstResponder()
            self.passwordTextField.becomeFirstResponder()
        } else if textField == self.passwordTextField {
            self.passwordTextField.resignFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
    
    private func showAlertCorrect(with title: String, and message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            if self.loginTextField.text != "Marat" {
                self.loginTextField.text = ""
            }
            if self.passwordTextField.text != "qwerty" {
                self.passwordTextField.text = ""
            }
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func showAlert(with title: String, and
        message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

