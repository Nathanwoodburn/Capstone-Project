//
//  customButtons.swift
//  AlarmPrototype
//
//  Created by Cameron Palmer on 30/7/21.
//

import Foundation
import UIKit

//class customTabBar: UITabBar {
//    
//    override class func appearance() -> Self {
//        var tabAppearance = super.appearance()
//        tabAppearance.backgroundImage = UIImage()
//        tabAppearance.shadowImage = UIImage()
//        tabAppearance.tintColor = .green
//        return tabAppearance as! Self
//    }
//}


@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
