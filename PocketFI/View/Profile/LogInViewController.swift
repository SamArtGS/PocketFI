//
//  LogInViewController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/8/21.
//

import UIKit

extension ProfileViewController{

    func loggin(){
        
        let stack: UIStackView = {
           let stack:UIStackView = UIStackView()
            stack.axis = .vertical
            stack.distribution = .fillProportionally
            stack.alignment = .center
            stack.spacing = 10
            stack.translatesAutoresizingMaskIntoConstraints = false
            return stack
        }()
        
        let label:UILabel = {
            let label = UILabel()
            label.text = "Debes iniciar sesión"
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        let imageLogin:UIImageView = {
            let image = UIImageView()
            image.image = UIImage(named: "imageUser")
            image.translatesAutoresizingMaskIntoConstraints = false
            return image
        }()
        
        let accontTextField:UITextField = {
            let accontTextField = UITextField()
            accontTextField.translatesAutoresizingMaskIntoConstraints = false
            return accontTextField
        }()
        
        let passwordTextField:UITextField = {
            let passwordTextField = UITextField()
            passwordTextField.textContentType = .password
            passwordTextField.translatesAutoresizingMaskIntoConstraints = false
            return passwordTextField
        }()
        
        view.addSubview(stack)
        stack.addArrangedSubview(label)
        stack.addArrangedSubview(imageLogin)
        stack.addArrangedSubview(accontTextField)
        stack.addArrangedSubview(passwordTextField)
        
        NSLayoutConstraint.activate([
            stack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stack.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
