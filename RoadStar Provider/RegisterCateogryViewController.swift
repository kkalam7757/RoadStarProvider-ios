//
//  RegisterCateogryViewController.swift
//  RoadStar Provider
//
//  Created by admin on 01/07/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class RegisterCateogryViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnasProvider(_ sender: Any) {
        self.goToRegisterScreen()
        
    }
    
    @IBAction func btnRegisterasCompany(_ sender: Any) {
        goToRegisterCompanyScreen()
    }

    @IBAction func btnRegisterasDriver(_ sender: Any) {
        goToRegisterDriverScreen()
    }
    
    func goToRegisterDriverScreen(){
        let controller = UIStoryboard.loadRegisterDriverViewController()
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    func goToRegisterScreen(){
        let controller = UIStoryboard.loadRegisterViewController()
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    
    func goToRegisterCompanyScreen(){
        let controller = UIStoryboard.loadRegisterCompanyViewController()
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
    
    
}
