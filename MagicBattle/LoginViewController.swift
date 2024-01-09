//
//  LoginViewController.swift
//  MagicBattle
//
//  Created by belova natasha on 09.01.2024.
//

import UIKit

class LoginViewController: UIViewController {
   override func viewDidLoad() {
      super.viewDidLoad()
       view.backgroundColor = UIColor.green
      title = "Login Screen"
      let loginButton = UIBarButtonItem(title: "Log In", style: .plain, target: self, action: #selector(login))
      navigationItem.setLeftBarButton(loginButton, animated: true)
   }
    @objc
    private func login() {
      // store the user session (example only, not for the production)
        UserDefaults.standard.set(true, forKey: "LOGGED_IN")
        AppDelegate.shared.rootViewController.showMainMenu()
      // navigate to the Main Screen
   }
}
