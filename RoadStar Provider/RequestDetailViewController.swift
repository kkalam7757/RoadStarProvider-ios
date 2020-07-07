//
//  RequestDetailViewController.swift
//  RoadStar Provider
//
//  Created by admin on 04/07/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class RequestDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func btnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnCancel(_ sender: Any) {
        self.showCancelRequestView()
    }
    
    func showCancelRequestView(){
        let signoutView = UINib.loadCancelRequestView(CancelRequestView.self) as! CancelRequestView
        singleton().HBRectView.addSubViewToParentWindow(view: signoutView, withFrame: CGRect(x: 20, y:0,  width: UIScreen.main.bounds.width - 40 , height: signoutView.frame.height), isCenter: true)
    }
}
