//
//  FirstVC.swift
//  OnboardApp
//
//  Created by Ерлан Султанов on 2/17/20.
//  Copyright © 2020 Ерлан Султанов. All rights reserved.
//

import Foundation
import UIKit

class FirstVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextButtonDidTapped(sender: UIButton) {
        let parentVC = self.parent as! OnboardingVC
        parentVC.setViewControllers([parentVC.viewControllerAtIndex(index: 1)], direction: .forward, animated: true, completion: nil)
    }
    
    @IBAction func closeButtonDidTapped(sender: UIButton) {
        self.dismiss(animated: true)
        
    }
}
