//
//  FeatureListViewController.swift
//  Memory
//
//  Created by user@3 on 05/11/25.
//

import UIKit

class FeatureListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func startedButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)

        // No need for if-let since it returns non-optional
        let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC")

        present(loginVC, animated: true)
    }
}
