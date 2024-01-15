//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
//        navigationController?.navigationBar.backgroundColor = UIColor(named: K.BrandColors.blue)
        titleLabel.text = ""
        let titleText = K.appName
        var counter = 0.0
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * counter, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            counter += 1
        }
        
    }
    
    
}
