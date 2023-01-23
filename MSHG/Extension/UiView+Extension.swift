//
//  UiView+Extension.swift
//  MSHG
//
//  Created by Konstantyn Koroban on 13/02/2022.
//


import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
