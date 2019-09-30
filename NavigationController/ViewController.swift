//
//  ViewController.swift
//  NavigationController
//
//  Created by chander bhushan on 27/09/19.
//  Copyright © 2019 swiftseries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // self.navigationController?.navigationBar.barTintColor = UIColor.orange
        
       // let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white,  NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20) ]
        
        //navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        self.navigationController?.visibleViewController?.navigationItem.title = "First VC"
    
        
    }

    @IBAction func goToSecondViewController(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

