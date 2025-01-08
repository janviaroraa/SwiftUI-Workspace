//
//  UIApplication+Ext.swift
//  WeSplit
//
//  Created by Janvi Arora on 08/01/25.
//

import UIKit

extension UIApplication {

    var keyWindow: UIWindow? {
        windows.first { $0.isKeyWindow }
    }
}
