//
//  OverViewScreenViewController.swift
//  BAM
//
//  Created by admin on 11/05/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit
class OverViewScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    @IBAction func btnSignIn(_ sender: Any) {
        self.goToSignInScreen()
    }
    
    @IBAction func btnRegister(_ sender: Any) {
        self.goToRegisterCategoryScreen()
    }
    
    
    func goToRegisterCategoryScreen(){
        let controller = UIStoryboard.loadRegisterCategoryViewController()
        self.navigationController?.pushViewController(controller, animated: true)
         
       }
        
    func goToSignInScreen(){
        let controller = UIStoryboard.loadSignInViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
