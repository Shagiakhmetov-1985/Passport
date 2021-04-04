//
//  ViewController.swift
//  Passport
//
//  Created by Marat Shagiakhmetov on 31.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    // MARK: - Private properties
    private let user = "Marat"
    private let password = "qwerty"
    
    private let viewControllers = [WelcomeViewController(),
                                   AboutMeViewController(),
                                   PhotosViewController(),
                                   SettingViewController()]
    
    private let colorOne = UIColor(
        red: 235/255,
        green: 55/255,
        blue: 75/255,
        alpha: 1
    )
    private let colorTwo = UIColor(
        red: 235/255,
        green: 122/255,
        blue: 235/255,
        alpha: 1
    )
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setButtonForm()
        
    }
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let _ = segue.destination as! UITabBarController
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            }
        }
    }
    // MARK: Set background color
    override func viewWillLayoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0,
                                     y: 0,
                                     width: view.bounds.width,
                                     height: view.bounds.height
        )
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    // MARK: IB Actions
    @IBAction func logInActionButton() {
        guard loginTextField.text == user,
              passwordTextField.text == password else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password",
                      textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgonUserNameButton() {
        showAlert(title: "Hey!", message: "Your name is 'Marat' 😜")
    }
    
    @IBAction func forgonPasswordButton() {
        showAlert(title: "Are you okay?", message: "Your password is 'qwerty' 😇")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = nil
        passwordTextField.text = nil
    }
    
    // MARK: Set button form
    private func setButtonForm() {
        logInButton.layer.cornerRadius = logInButton.frame.height / 2
        logInButton.layer.borderWidth = 3
        logInButton.layer.borderColor = CGColor(
            red: 245,
            green: 245,
            blue: 245,
            alpha: 1
        )
    }
}
// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
// MARK: - Work with keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInActionButton()
        }
        return true
    }
}

