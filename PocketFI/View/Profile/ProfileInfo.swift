//
//  ProfileInfo.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/27/21.
//

import UIKit
import PassKit

class ProfileInfo: UICollectionReusableView {
    
    
    private let fondoBlur:UIImageView = {
       let image = UIImageView(image: UIImage(named: "imageCard"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.addBlurEffect()
        image.contentMode = .scaleToFill
        return image
    }()
    
    private let card: UIView = {
       let card = UIView()
        card.backgroundColor = .white
        
        card.layer.cornerRadius = 15
        card.clipsToBounds = true
        card.translatesAutoresizingMaskIntoConstraints = false
        card.addShadow()
        return card
    }()
    
    private let stack: UIStackView = {
       let stack:UIStackView = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .center
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let botonWallet: UIButton = {
        let boton = PKAddPassButton(addPassButtonStyle: .blackOutline)
        boton.frame = CGRect(x:45.0, y: 340.0, width: 320, height: 50)
        boton.translatesAutoresizingMaskIntoConstraints = false
        return boton
    }()
    
    override func draw(_ rect: CGRect) {
        addSubview(fondoBlur)
        fondoBlur.addSubview(stack)
        
        stack.addArrangedSubview(card)
        stack.addArrangedSubview(botonWallet)
        
        NSLayoutConstraint.activate([
            fondoBlur.topAnchor.constraint(equalTo: topAnchor),
            fondoBlur.leadingAnchor.constraint(equalTo: leadingAnchor),
            fondoBlur.trailingAnchor.constraint(equalTo: trailingAnchor),
            fondoBlur.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            stack.topAnchor.constraint(equalTo: fondoBlur.topAnchor, constant: 20),
            stack.leadingAnchor.constraint(equalTo: fondoBlur.leadingAnchor, constant: 10),
            stack.trailingAnchor.constraint(equalTo: fondoBlur.trailingAnchor, constant: -10),
            stack.bottomAnchor.constraint(equalTo: fondoBlur.bottomAnchor,constant: -10),
            
            card.heightAnchor.constraint(equalTo: fondoBlur.heightAnchor, multiplier: 0.7),
            card.widthAnchor.constraint(equalTo: fondoBlur.widthAnchor, constant: -50),
            botonWallet.widthAnchor.constraint(equalTo: card.widthAnchor, multiplier: 0.8),
        ])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
