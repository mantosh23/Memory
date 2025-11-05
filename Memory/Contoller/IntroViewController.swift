//
//  IntroViewController.swift
//  Memory
//
//  Created by user@3 on 05/11/25.
//

import UIKit

class IntroViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func signInButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)

        // No need for if-let since it returns non-optional
        let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC")

        loginVC.modalPresentationStyle = .overCurrentContext
        present(loginVC, animated: true)
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        
    }
}
