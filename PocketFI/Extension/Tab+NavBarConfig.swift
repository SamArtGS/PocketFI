//
//  Tab+NavBarConfig.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/8/21.
//

import UIKit

extension UITabBarController: UINavigationBarDelegate{
    
    func setTabBarColor(colorFondo: UIColor, colorSeleccionado: UIColor, colorNoSeleccionado: UIColor){
        if #available(iOS 13.0, *) {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = colorFondo
            let item = UITabBarItemAppearance()
            item.normal.iconColor = colorNoSeleccionado
            item.selected.iconColor = colorSeleccionado
            item.normal.titleTextAttributes = [
                NSAttributedString.Key.foregroundColor: colorNoSeleccionado,
                NSAttributedString.Key.font: UIFont.systemFont(ofSize: 10, weight: .regular)
            ]
            item.selected.titleTextAttributes = [NSAttributedString.Key
                                                .foregroundColor: colorSeleccionado]
            appearance.stackedLayoutAppearance = item
            appearance.inlineLayoutAppearance = item
            appearance.compactInlineLayoutAppearance = item
            tabBar.standardAppearance = appearance
        }else{
            tabBar.barTintColor = colorFondo
            tabBar.unselectedItemTintColor = colorNoSeleccionado
            tabBar.tintColor = colorSeleccionado
            tabBar.isTranslucent = false
        }
    }
    
    func colorearNavigationBar(colorFondo: UIColor, colorLineaAdorno: UIColor, colorLetras: UIColor){
        let apariencia = UINavigationBar.appearance()
        
        apariencia.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: colorLetras,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18, weight: .regular)
        ]
        apariencia.tintColor = colorLetras
        navigationController?.navigationBar.delegate = self
    }
}


