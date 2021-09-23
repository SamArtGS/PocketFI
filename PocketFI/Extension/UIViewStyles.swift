//
//  UIViewStyles.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/8/21.
//

import UIKit

extension UIView{
    func addShadow(opacy: Float){
        layer.cornerRadius = 15.0
        layer.borderWidth = 0.0
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowRadius = 3.0
        layer.shadowOpacity = opacy
        layer.masksToBounds = false 
    }
    func sizeLetters() -> Float {
        switch UIScreen.main.nativeBounds.height {
            case 1136: //5, 5s, SE
                return 20
            case 1334: //6,7,8
                return 23
            case 1920, 2208:// 6+,7+,8+
                return 25
            case 2436: // X, Xs, 11Pro
                return 23
            case 2688: // Xs Max, 11 Pro Max
               return 25
            case 1792: // Xr, 11
                return 24
            default:
                return 23
            }
    }
}

extension UIViewController{
    
    func setNavConfig(title: String){
        self.navigationItem.title = title
        self.navigationItem.hidesSearchBarWhenScrolling = false
        self.navigationItem.searchController?.obscuresBackgroundDuringPresentation = false
        self.tabBarController?.navigationItem.title = " "
        self.navigationController?.navigationBar.tintColor = .oroUnam
    }
    
    func UIBarButtonCustom(_ target: Any?, action: Selector, imageName: String, imageSelected: String? = nil) -> UIBarButtonItem {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: imageName), for: .normal)
        
        button.addTarget(target, action: action, for: .touchUpInside)

        let menuBarItem = UIBarButtonItem(customView: button)
        menuBarItem.customView?.translatesAutoresizingMaskIntoConstraints = false
        menuBarItem.customView?.heightAnchor.constraint(equalToConstant: 25).isActive = true
        menuBarItem.customView?.widthAnchor.constraint(equalToConstant: 25).isActive = true

        return menuBarItem
    }
    
    @objc func salir(){
        self.dismiss(animated: true)
    }
    
}
