//
//  UIStoryboard+Loader.swift
//  DashSpotlessUser
//
//  Created by admin on 12/02/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
import UIKit

fileprivate enum Storyboard:String{
    case main = "Main"
}

fileprivate extension UIStoryboard{
    static func loadFromMain(_ identifier: String) -> UIViewController {
        return load(from: .main, identifier: identifier)
    }
   
    static func load(from storyboard: Storyboard, identifier: String) -> UIViewController {
        let uiStoryboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        let controller = uiStoryboard.instantiateViewController(withIdentifier: identifier)
        controller.view.frame = UIScreen.main.bounds
        return controller
    }
}

extension UIStoryboard{
    
    static func loadSplashViewController()->SplashViewController{
        return loadFromMain("SplashViewController") as! SplashViewController
    }
    
    static func loadOverViewScreenViewController()->OverViewScreenViewController{
        return loadFromMain("OverViewScreenViewController") as! OverViewScreenViewController
    }

    static func loadForgetPasswordViewController()->ForgetPasswordViewController{
        return loadFromMain("ForgetPasswordViewController") as! ForgetPasswordViewController
    }

    static func loadSignInViewController()->SignInViewController{
        return loadFromMain("SignInViewController") as! SignInViewController
    }

    static func loadRegisterViewController()->RegisterViewController{
        return loadFromMain("RegisterViewController") as! RegisterViewController
    }
    
    static func loadRegisterCategoryViewController()->RegisterCateogryViewController{
        return loadFromMain("RegisterCateogryViewController") as! RegisterCateogryViewController
    }

    static func loadVerifyOtpViewController()->VerifyOtpViewController{
        return loadFromMain("VerifyOtpViewController") as! VerifyOtpViewController
    }

    static func loadRegisterDetailViewController()->RegisterDetailViewController{
        return loadFromMain("RegisterDetailViewController") as! RegisterDetailViewController
    }

    static func loadChangePasswordViewController()->ChangePasswordViewController{
        return loadFromMain("ChangePasswordViewController") as! ChangePasswordViewController
    }
    
    static func loadProfileViewController()->ProfileViewController{
        return loadFromMain("ProfileViewController") as! ProfileViewController
    }
    static func loadSettingsViewController()->SettingsViewController{
        return loadFromMain("SettingsViewController") as! SettingsViewController
    }

    

    static func loadRegisterDriverViewController()->RegisterDriverViewController{
        return loadFromMain("RegisterDriverViewController") as! RegisterDriverViewController
    }

    static func loadRegisterCompanyViewController()->RegisterCompanyViewController{
           return loadFromMain("RegisterCompanyViewController") as! RegisterCompanyViewController
    }

    static func loadBookingHistoryViewController()->BookingHistoryViewController{
           return loadFromMain("BookingHistoryViewController") as! BookingHistoryViewController
    }

    static func loadEarningViewController()->EarningViewController{
        return loadFromMain("EarningViewController") as! EarningViewController
    }

    static func loadManageVehicleViewController()->ManageVehicleViewController{
           return loadFromMain("ManageVehicleViewController") as! ManageVehicleViewController
       }

   static func loadRequestDetailViewController()->RequestDetailViewController{
       return loadFromMain("RequestDetailViewController") as! RequestDetailViewController
   }
    static func loadDocumentViewController()->DocumentViewController{
        return loadFromMain("DocumentViewController") as! DocumentViewController
    }

//    static func loadUserNotificationViewController()->UserNotificationViewController{
//        return loadFromMain("UserNotificationViewController") as! UserNotificationViewController
//    }
//
//    static func loadUserMyProfileViewController()->UserMyProfileViewController{
//        return loadFromMain("UserMyProfileViewController") as! UserMyProfileViewController
//    }
//
//    static func loadUserEventDetailViewController()->UserEventDetailViewController{
//        return loadFromMain("UserEventDetailViewController") as! UserEventDetailViewController
//    }
//
//    static func loadPaymentViewController()->PaymentViewController{
//        return loadFromMain("PaymentViewController") as! PaymentViewController
//    }
}
