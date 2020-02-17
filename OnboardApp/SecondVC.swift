//
//  SecondVC.swift
//  OnboardApp
//
//  Created by Ерлан Султанов on 2/17/20.
//  Copyright © 2020 Ерлан Султанов. All rights reserved.
//

import Foundation
import UIKit

class SecondVC: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func previousButtonDidTappe(sender: UIButton) {
        let parentVC = self.parent as! OnboardingVC
        parentVC.setViewControllers([parentVC.viewControllerAtIndex(index: 0)], direction: .reverse, animated: true, completion: nil)
    }
    @IBAction func nextButtonDidTapped(sender: UIButton) {
        let parentVC = self.parent as! OnboardingVC
        parentVC.setViewControllers([parentVC.viewControllerAtIndex(index: 2)], direction: .forward, animated: true, completion: nil)
    }
    
    
    @IBAction func closeButtonDidTapped(sender: UIButton) {
        self.dismiss(animated: true)
        
    }
}
