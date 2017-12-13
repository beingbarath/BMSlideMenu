//
//  ViewController.swift
//  BMSlideMenu
//
//  Created by Qinnovation on 12/13/17.
//  Copyright © 2017 Barath Mohan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var alertButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.sideMenu()
    }
    
    func sideMenu() {
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            alertButton.target = revealViewController()
            alertButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
}
