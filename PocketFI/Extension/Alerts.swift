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
    
    func mostrarAletraConIndicator(title: String, message: String, activityIndicator: inout UIActivityIndicatorView){
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.isUserInteractionEnabled = false
        activityIndicator.startAnimating()
        
        
        alert.view.addSubview(activityIndicator)
        alert.view.heightAnchor.constraint(equalToConstant: 95).isActive = true

        activityIndicator.centerXAnchor.constraint(equalTo: alert.view.centerXAnchor, constant: 0).isActive = true
        activityIndicator.bottomAnchor.constraint(equalTo: alert.view.bottomAnchor, constant: -20).isActive = true

        present(alert, animated: true)
    }
}
