//
//  PrincipalTabBar.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/20/21.
//

import UIKit

class PrincipalTabBar: UITabBar {
    @IBInspectable var color: UIColor?
        @IBInspectable var radii: CGFloat = 20.0

        private var shapeLayer: CALayer?

        override func draw(_ rect: CGRect) {
            addShape()
            if #available(iOS 13.0, *) {
                let appearance = UITabBarAppearance()
                appearance.backgroundColor = .blue
                let item = UITabBarItemAppearance()
                item.normal.iconColor = .white
                item.selected.iconColor = .systemYellow
                appearance.stackedLayoutAppearance = item
                appearance.inlineLayoutAppearance = item
                appearance.compactInlineLayoutAppearance = item
                self.standardAppearance = appearance
            }else{
                self.barTintColor = .blue
                self.unselectedItemTintColor = .white
                self.tintColor = .yellow
                self.isTranslucent = false
            }
            
        }
    
    

        private func addShape() {
            let shapeLayer = CAShapeLayer()

            shapeLayer.path = createPath()
            shapeLayer.strokeColor = UIColor.gray.withAlphaComponent(0.1).cgColor
            shapeLayer.fillColor = color?.cgColor ?? UIColor.white.cgColor
            shapeLayer.lineWidth = 2
            shapeLayer.shadowColor = UIColor.black.cgColor
            shapeLayer.shadowOffset = CGSize(width: 0   , height: -3);
            shapeLayer.shadowOpacity = 0.2
            shapeLayer.shadowPath =  UIBezierPath(roundedRect: bounds, cornerRadius: radii).cgPath
            

            if let oldShapeLayer = self.shapeLayer {
                layer.replaceSublayer(oldShapeLayer, with: shapeLayer)
            } else {
                layer.insertSublayer(shapeLayer, at: 0)
            }

            self.shapeLayer = shapeLayer
        }

        private func createPath() -> CGPath {
            let path = UIBezierPath(
                roundedRect: bounds,
                byRoundingCorners: [.topLeft, .topRight],
                cornerRadii: CGSize(width: radii, height: 0.0))

            return path.cgPath
        }
        override func layoutSubviews() {
            super.layoutSubviews()
            self.isTranslucent = true
            var tabFrame            = self.frame
            tabFrame.size.height    = 65 + (UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.safeAreaInsets.bottom ?? CGFloat.zero)
            tabFrame.origin.y       = self.frame.origin.y +   ( self.frame.height - 65 - (UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.safeAreaInsets.bottom ?? CGFloat.zero))
            self.layer.cornerRadius = 20
            self.frame            = tabFrame



            self.items?.forEach({ $0.titlePositionAdjustment = UIOffset(horizontal: 0.0, vertical: -5.0) })


        }
}
