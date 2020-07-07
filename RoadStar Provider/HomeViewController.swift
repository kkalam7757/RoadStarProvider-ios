//
//  HomeViewController.swift
//  TeriMeriJodi
//
//  Created by admin on 18/10/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
import  SDWebImage
class HomeViewController: UIViewController {

   
    @IBOutlet weak var btnSideMenu: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            btnSideMenu.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
}
