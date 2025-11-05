//
//  LoginViewController.swift
//  Memory
//
//  Created by user@3 on 05/11/25.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var textFieldView: UIView!
    @IBOutlet weak var emailTextFiled: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        textFieldView.layer.cornerRadius = 20
        addPadding(to: passwordTextField)
        addPadding(to: emailTextFiled)
        isModalInPresentation = true
        
    }
    
    
    private func setupNavigationBar() {
        // Set title
        navigationItem.title = "Sign In"
        
        // Create custom back button
        let backButton = UIBarButtonItem(
            image: UIImage(systemName: "chevron.left"),
            style: .plain,
            target: self,
            action: #selector(backTapped)
        )
        
        // Style the back button
        backButton.tintColor = .black
        navigationItem.leftBarButtonItem = backButton
        
        // Optional: remove large titles if enabled globally
        navigationController?.navigationBar.prefersLargeTitles = false
        
        // Optional: customize bar appearance
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }

    @objc private func backTapped() {
        dismiss(animated: true)
    }


    @IBAction func signInButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        if let navVC = storyboard.instantiateInitialViewController() {
            navVC.modalTransitionStyle = .crossDissolve
            navVC.modalPresentationStyle = .fullScreen
            present(navVC, animated: true)
        }
    }
    
    
    private func addPadding(to textField: UITextField) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always

        let rightPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: textField.frame.height))
        textField.rightView = rightPaddingView
        textField.rightViewMode = .always
    }
}
