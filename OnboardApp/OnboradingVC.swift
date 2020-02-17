//
//  OnboradingVC.swift
//  OnboardApp
//
//  Created by Ерлан Султанов on 2/17/20.
//  Copyright © 2020 Ерлан Султанов. All rights reserved.
//

import Foundation
import UIKit

class OnboardingVC: UIPageViewController {
    var index = 0
    var identifiers: NSArray = ["FirstVC", "SecondVC", "ThirdVC" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let vc1 = storyboard?.instantiateViewController(identifier: "FirstVC") else { return }
        self.dataSource = self
        setViewControllers([vc1], direction: .reverse, animated: true, completion: nil)
        
    }
    
    
    func viewControllerAtIndex(index: Int) -> UIViewController! {

        
        switch  index {
        case 0 :
            return self.storyboard?.instantiateViewController(withIdentifier: "FirstVC")
        case 1 :
            return self.storyboard!.instantiateViewController(withIdentifier: "SecondVC")
        case 2 :
            return self.storyboard!.instantiateViewController(withIdentifier: "ThirdVC")
        default:
            return nil

        }
    }
    
    
}

extension OnboardingVC: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
       let identifier = viewController.restorationIdentifier
        let index = self.identifiers.index(of: identifier ?? "")
            if index == 0 {
                return nil
            }
            self.index = index - 1
            return self.viewControllerAtIndex(index: self.index)
            
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
     
        let identifier = viewController.restorationIdentifier
               let index = self.identifiers.index(of: identifier ?? "")
               if index == identifiers.count - 1 {
                   return nil
               }
               self.index = index + 1
               return self.viewControllerAtIndex(index: self.index)
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController!) -> Int {
        return self.identifiers.count
    }

    func presentationIndexForPageViewController(pageViewController: UIPageViewController!) -> Int {
        return 0
    }
    
    
}
