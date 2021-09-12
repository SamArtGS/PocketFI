//
//  Tab+NavBarConfig.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/8/21.
//

import UIKit

extension UIViewController: UINavigationControllerDelegate{
    
    func setNavBarColor(colorFondo: UIColor, colorLetras: UIColor){
        let apariencia = UINavigationBar.appearance()
        
        apariencia.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: colorLetras,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18, weight: .regular)
        ]
        apariencia.tintColor = colorLetras
        navigationController?.delegate = self
    }
}


