//
//  MainViewController.swift
//  MagicBattle
//
//  Created by belova natasha on 09.01.2024.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 60))
   override func viewDidLoad() {
      super.viewDidLoad()
       view.backgroundColor = UIColor.blue // to visually distinguish the protected part
      title = "Main Screen"
       button.setTitle("log out", for: .normal)
       button.setTitleColor(.systemBlue,
                            for: .normal)
       button.addTarget(self, action: #selector(logout), for: .touchUpInside)
       self.view.addSubview(button)
//      navigationItem.setLeftBarButton(logoutButton, animated: true)
   }
   @objc
   private func logout() {
      // clear the user session (example only, not for the production)
      UserDefaults.standard.set(false, forKey: "LOGGED_IN")
      AppDelegate.shared.rootViewController.showLoginScreen()
      // navigate to the Main Screen
   }
}
