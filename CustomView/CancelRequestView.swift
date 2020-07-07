//
//  CancelRequestView.swift
//  RoadStar Provider
//
//  Created by admin on 04/07/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class CancelRequestView: UIView {

    @IBOutlet weak var btnNo: UIButton!
    override func awakeFromNib() {
           super.awakeFromNib()
       }
       
    @IBAction func btnNo(_ sender: Any) {
        singleton().HBRectView.removeSubviewFromParentWidnow()
    }
}
