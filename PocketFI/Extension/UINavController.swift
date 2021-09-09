//
//  UINavControlle.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/8/21.
//

import UIKit
extension UINavigationController {
    open override func viewWillLayoutSubviews() {
        navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
