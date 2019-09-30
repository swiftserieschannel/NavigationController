//
//  FourthViewController.swift
//  NavigationController
//
//  Created by chander bhushan on 27/09/19.
//  Copyright © 2019 swiftseries. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       // let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white,  NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20) ]
        
       // navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        self.navigationController?.visibleViewController?.navigationItem.title = "Fourth VC"
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    @IBAction func goToRootViewController(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    @IBAction func popViewControlller(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goToSecondViewController(_ sender: Any) {
//        let vcs = self.navigationController?.viewControllers
//
//        for viewController in vcs!{
//            if let vc = viewController as? SecondViewController {
//                self.navigationController?.popToViewController(vc, animated: true)
//            }
//        }
        
        let vc = self.navigationController?.viewControllers[(self.navigationController?.viewControllers.count ?? 0) - 3]
        self.navigationController?.popToViewController(vc!, animated: true)
    }
    
}
