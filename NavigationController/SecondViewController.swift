//
//  SecondViewController.swift
//  NavigationController
//
//  Created by chander bhushan on 27/09/19.
//  Copyright © 2019 swiftseries. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let leftBarButton = UIBarButtonItem(image: UIImage(named: "back"), style: .done, target: self, action: #selector(back))
        navigationItem.leftBarButtonItems = [leftBarButton]
        
        
        let rightBarButton = UIBarButtonItem(title: "Filter", style: .done, target: self, action: #selector(filterApplied))
        navigationItem.rightBarButtonItems = [rightBarButton]
//        navigationItem.rightBarButtonItem?.tintColor = .white
        
        //let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white,  NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20) ]
        
        //navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        self.navigationController?.visibleViewController?.navigationItem.title = "Second VC"
    }
    
    @objc func back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func filterApplied(){
        debugPrint("Filter button is clicked!")
    }
    
    @IBAction func goToThirdViewController(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
