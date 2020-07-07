//
//  UINib+Loader.swift
//  DashSpotlessUser
//
//  Created by admin on 20/02/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
import UIKit

fileprivate extension UINib {
    
    static func nib(named nibName: String) -> UINib {
        return UINib(nibName: nibName, bundle: nil)
    }
    
    static func loadSingleView(_ nibName: String, owner: Any?) -> UIView {
        return nib(named: nibName).instantiate(withOwner: owner, options: nil)[0] as! UIView
    }
}

// MARK: App Views

extension UINib {
 

    class func loadCancelRequestView(_ owner: AnyObject) -> UIView {
        return loadSingleView("CancelRequestView", owner: owner)
    }
    
    class func loadLogoutView(_ owner: AnyObject) -> UIView {
        return loadSingleView("LogoutView", owner: owner)
    }
    
}
