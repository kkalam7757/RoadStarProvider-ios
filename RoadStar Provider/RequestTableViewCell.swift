//
//  RequestTableViewCell.swift
//  RoadStar Provider
//
//  Created by admin on 04/07/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class RequestTableViewCell: UITableViewCell {
       var minHeight: CGFloat?
        @IBOutlet weak var ShadowView: UIView!
        override func awakeFromNib() {
            super.awakeFromNib()
            ShadowView.layer.shadowColor = UIColor.lightGray.cgColor
            ShadowView.layer.shadowOpacity = 1
            ShadowView.layer.shadowOffset = .zero
            ShadowView.layer.shadowRadius = 10
            ShadowView.layer.cornerRadius = 5
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
        }
        override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
                   let size = super.systemLayoutSizeFitting(targetSize, withHorizontalFittingPriority: horizontalFittingPriority, verticalFittingPriority: verticalFittingPriority)
                   guard let minHeight = minHeight else { return size }
                   return CGSize(width: size.width, height: max(size.height, minHeight))
               }
        

    }
