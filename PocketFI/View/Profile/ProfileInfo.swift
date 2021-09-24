//
//  ProfileInfo.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/27/21.
//

import UIKit
import PassKit

protocol ProfileCardDelegate: AnyObject{
    func PKAddCredential()
}

class ProfileInfo: UICollectionReusableView {
    
    weak var delegate: ProfileCardDelegate?
    
    private let fondoBlur:UIImageView = {
       let image = UIImageView(image: UIImage(named: "imageCard"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.addBlurEffect(alpha: 0.8)
        image.isUserInteractionEnabled = true
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private let card: CrendentialView = {
       let card = CrendentialView()
        card.layer.cornerRadius = 15
        card.clipsToBounds = true
        card.translatesAutoresizingMaskIntoConstraints = false
        card.addShadow(opacy: 0.7)
        return card
    }()
    
    private let stack: UIStackView = {
       let stack:UIStackView = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .center
        stack.spacing = 5
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let stackHorizontalGenerator: ()-> UIStackView = {
        let stack:UIStackView = UIStackView()
         stack.axis = .vertical
         stack.distribution = .fill
         stack.alignment = .center
         stack.spacing = 10
         stack.translatesAutoresizingMaskIntoConstraints = false
         return stack
    }
    
    private let stackVerticalGenerator: ()-> UIStackView = {
        let stack:UIStackView = UIStackView()
         stack.axis = .vertical
        stack.distribution = .equalSpacing
         stack.alignment = .center
         stack.spacing = 10
        stack.isUserInteractionEnabled = true
         stack.translatesAutoresizingMaskIntoConstraints = false
         return stack
    }
    
    
    private let botonWallet: UIButton = {
        let boton =  PKAddPassButton(addPassButtonStyle: .blackOutline)
        boton.frame = CGRect(x:45.0, y: 340.0, width: 320, height: 50)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.isUserInteractionEnabled = true
        return boton
    }()
    
    override func draw(_ rect: CGRect) {
        self.isUserInteractionEnabled = true
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm"
        let someDateTime = formatter.date(from: "2018/10/08 22:31")
        card.student = Student(id: 1, name: "Samuel Arturo", ap_pat: "Garrido", ap_mat: "Sánchez", anioIngreso: someDateTime ?? Date(), numCuenta: "418046193", imagePerfil: "DemoCardProfile", carrera: "Ingeniería en Computación")
        
        botonWallet.addTarget(self, action: #selector(addCredential), for: .touchUpInside)
        botonWallet.isUserInteractionEnabled = true
        addSubview(fondoBlur)
        
        fondoBlur.addSubview(stack)
        
        stack.addArrangedSubview(card)
        stack.addArrangedSubview(botonWallet)
        
        NSLayoutConstraint.activate([
            fondoBlur.topAnchor.constraint(equalTo: topAnchor),
            fondoBlur.leadingAnchor.constraint(equalTo: leadingAnchor),
            fondoBlur.trailingAnchor.constraint(equalTo: trailingAnchor),
            fondoBlur.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            //stack.topAnchor.constraint(equalTo: fondoBlur.safeAreaLayoutGuide.topAnchor, constant: 20),
            stack.leadingAnchor.constraint(equalTo: fondoBlur.leadingAnchor, constant: 10),
            stack.trailingAnchor.constraint(equalTo: fondoBlur.trailingAnchor, constant: -10),
            stack.bottomAnchor.constraint(equalTo: fondoBlur.bottomAnchor,constant: -10),
            
            
            card.widthAnchor.constraint(equalTo: fondoBlur.widthAnchor, constant: -50),
            card.heightAnchor.constraint(equalTo: card.widthAnchor, multiplier: 0.6),
            
            botonWallet.widthAnchor.constraint(equalTo: card.widthAnchor, multiplier: 0.8),
            botonWallet.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    @objc func addCredential(){
        delegate?.PKAddCredential()
    }
}
