//
//  UIImageView.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/27/21.
//

import Foundation
import UIKit

extension UIImageView
{
    func addBlurEffect(alpha: Float)
    {
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.alpha = CGFloat(alpha)
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight] // for supporting device rotation
        self.addSubview(blurEffectView)
    }
}
