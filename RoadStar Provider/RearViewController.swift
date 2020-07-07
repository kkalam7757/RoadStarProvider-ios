//
//  RearViewController.swift
//  TeriMeriJodi
//
//  Created by admin on 18/10/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class RearViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnProfile(_ sender: Any) {
        self.goToProfileScreen()
    }
    @IBAction func btnHome(_ sender: Any) {
        goToMainScreen()
    }
    @IBAction func btnMangeVehicle(_ sender: Any) {
        self.goToManageVehicleScreen()
    }
    @IBAction func btnDocuments(_ sender: Any) {
        self.goToDocumentScreen()
    }
    @IBAction func btnHistory(_ sender: Any) {
        self.goToHistoryScreen()
    }
    @IBAction func btnEarning(_ sender: Any) {
        self.goToEarningScreen()
    }
    @IBAction func btnPaymentMethod(_ sender: Any) {
    }
    @IBAction func btnContactUs(_ sender: Any) {
    }
    @IBAction func btnLogout(_ sender: Any) {
        showSignoutView()
    }
    
    func goToProfileScreen(){
        let controller = UIStoryboard.loadProfileViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func goToEarningScreen(){
        let controller = UIStoryboard.loadEarningViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func goToHistoryScreen(){
        let controller = UIStoryboard.loadBookingHistoryViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func goToManageVehicleScreen(){
        let controller = UIStoryboard.loadManageVehicleViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    func goToDocumentScreen(){
        let controller = UIStoryboard.loadDocumentViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func showSignoutView(){
        let signoutView = UINib.loadLogoutView(LogoutView.self) as! LogoutView
        singleton().HBRectView.addSubViewToParentWindow(view: signoutView, withFrame: CGRect(x: 20, y:0,  width: UIScreen.main.bounds.width - 40 , height: signoutView.frame.height), isCenter: true)
    }
    
    
    func goToMainScreen(){
         revealViewController()?.revealToggle(animated: true)
    }
    
}
