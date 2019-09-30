
//
//  ThirdViewController.swift
//  NavigationController
//
//  Created by chander bhushan on 27/09/19.
//  Copyright © 2019 swiftseries. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       // let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white,  NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20) ]
        
      //  navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        self.navigationController?.visibleViewController?.navigationItem.title = "Third VC"
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    @IBAction func goToFourthViewController(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
