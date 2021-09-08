//
//  Alert.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/7/21.
//

import UIKit

extension UIViewController{
    func mostrarAlerta(title: String, message: String){
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertVC.addAction(okAction)
        present(alertVC, animated: true, completion: nil)
    }
}
