//
//  LogoutView.swift
//  RoadStar Provider
//
//  Created by admin on 04/07/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class LogoutView: UIView {

    @IBOutlet weak var ContainerView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        ContainerView.layer.cornerRadius = 20
    }
    
    @IBAction func btnno(_ sender: Any) {
        singleton().HBRectView.removeSubviewFromParentWidnow()
    }
    
}
