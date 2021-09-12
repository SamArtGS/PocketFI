//
//  Tab+NavBarConfig.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/8/21.
//

import UIKit

extension UIViewController: UINavigationControllerDelegate{
    
    func coolourNavigationBar(colorBackground: UIColor, colorTint: UIColor, textColor: UIColor){
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            let appearanceNormal = UINavigationBarAppearance()

            appearance.backgroundColor = .clear
            appearanceNormal.backgroundColor = colorBackground
            
            //self.navigationBar.standardAppearance = appearance
        }else{
            self.navigationController?.navigationBar.barTintColor = colorBackground
            self.navigationController?.navigationBar.isTranslucent = true
        }
    }
    
    
}


