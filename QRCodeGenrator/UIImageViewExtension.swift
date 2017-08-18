//
//  UIImageViewExtension.swift
//  MyDunia
//
//  Created by Rajeev kumar singh on 8/17/17.
//  Copyright © 2017 TalentTrobe(India.com. All rights reserved.
//

import UIKit

public extension UIImageView {
    
    /// Creates a new image view with the given QRCode
    ///
    /// - parameter qrCode:      The QRCode to display in the image view
    public convenience init(qrCode: QRCode) {
        self.init(image: qrCode.image)
    }
    
}
