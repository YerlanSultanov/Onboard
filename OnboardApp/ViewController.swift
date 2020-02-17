//
//  ViewController.swift
//  OnboardApp
//
//  Created by Ерлан Султанов on 2/17/20.
//  Copyright © 2020 Ерлан Султанов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let firstLaunched = UserDefaults.standard.bool(forKey: "isLaunchedBefore")

        if !firstLaunched {
            let vc = storyboard?.instantiateViewController(identifier: "OnboardingVC") as! OnboardingVC
            navigationController?.present(vc, animated: true)
            UserDefaults.standard.set(true, forKey: "isLaunchedBefore")
        } else { return }

    }

    @IBAction func startOnboarding(sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "OnboardingVC") as! OnboardingVC
        navigationController?.present(vc, animated: true)
    }
}

