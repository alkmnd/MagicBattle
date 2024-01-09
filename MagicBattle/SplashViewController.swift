//
//  SplashViewController.swift
//  MagicBattle
//
//  Created by belova natasha on 09.01.2024.
//

import Foundation
import UIKit

class SplashViewController: UIViewController {
    private let activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        view.addSubview(activityIndicator)
        activityIndicator.frame = view.bounds
        activityIndicator.backgroundColor = UIColor(white: 0, alpha: 0.4)
        makeServiceCall()
    }
    
    private func makeServiceCall() {
        activityIndicator.startAnimating()
           DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(3)) {
              self.activityIndicator.stopAnimating()
              
               if UserDefaults.standard.bool(forKey: "LOGGED_IN") {
                   AppDelegate.shared.rootViewController.showMainMenu()
                   print("1")
              } else {
                  AppDelegate.shared.rootViewController.showLoginScreen()
                  print("2")
              }
           }
    }
}
