//
//  ViewController.swift
//  MagicBattle
//
//  Created by belova natasha on 29.12.2023.
//

import UIKit
import SceneKit
import ARKit

class RootViewController: UIViewController {
    private var current: UIViewController
    
    init() {
        self.current = SplashViewController()
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChild(current)
        current.view.frame = view.bounds
        view.addSubview(current.view)
        current.didMove(toParent: self)
    }
    
    required init?(coder: NSCoder) {
        self.current = SplashViewController()
        super.init(nibName: nil, bundle: nil)
    }
    
    func showLoginScreen() {
        let loginViewController = LoginViewController()
      
          let new = UINavigationController(rootViewController: loginViewController)                               // 1
         addChild(new)                    // 2
          new.view.frame = view.bounds                   // 3
          view.addSubview(new.view)                      // 4
          new.didMove(toParent: self)      // 5
          current.willMove(toParent: nil)  // 6
          current.view.removeFromSuperview()            // 7
          current.removeFromParent()       // 8
          current = new                                  // 9
       }
    
    func showMainMenu() {
        let mainViewController = MainViewController()
        let new = UINavigationController(rootViewController: mainViewController)
        addChild(new)                    // 2
         new.view.frame = view.bounds                   // 3
         view.addSubview(new.view)                      // 4
         new.didMove(toParent: self)      // 5
         current.willMove(toParent: nil)  // 6
         current.view.removeFromSuperview()            // 7
         current.removeFromParent()       // 8
         current = new     
        
    }
}
