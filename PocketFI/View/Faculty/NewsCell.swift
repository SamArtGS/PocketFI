//
//  NewsCell.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/17/21.
//

import UIKit
import Lottie

class CellNews: UICollectionViewCell {

    var noticia: Noticia? {
        didSet{
            initConstraints()
        }
    }
    
    private let box: UIView = {
        let view = UIView()
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.layer.cornerRadius = 10
        view.backgroundColor = .gray1
        view.clipsToBounds = true
        return view
    }()
    
    private let imageNew: AnimationView = {
        let imageView = AnimationView(name: "newsOne")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.loopMode = .loop
        imageView.animationSpeed = 1
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        imageView.play()
        return imageView
   }()
    
    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.alignment = .center
        stack.spacing = 0
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let textTopic : UILabel = {
        let etiqueta = UILabel()
        etiqueta.font = .systemFont(ofSize: 20, weight: .bold)
        etiqueta.textColor = UIColor(named: "Letter1")
        etiqueta.font = .systemFont(ofSize: 20, weight: .bold)
        etiqueta.numberOfLines = 2
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .left
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    
    func initConstraints(){
        addSubview(box)
        box.addSubview(stack)
        stack.addArrangedSubview(imageNew)
        stack.addArrangedSubview(textTopic)
        box.sendSubviewToBack(imageNew)
        box.addShadow(opacy: 0.3)
        
        textTopic.text = "Protocolos para el regreso a clases seguro :("
        
        NSLayoutConstraint.activate([
            box.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            box.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            box.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -10),
            box.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -5),
            
            stack.topAnchor.constraint(equalTo: box.topAnchor),
            stack.leadingAnchor.constraint(equalTo: box.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: box.trailingAnchor),
            stack.bottomAnchor.constraint(equalTo: box.bottomAnchor),
            
            imageNew.leadingAnchor.constraint(equalTo: box.leadingAnchor),
            imageNew.trailingAnchor.constraint(equalTo: box.trailingAnchor),
            textTopic.heightAnchor.constraint(equalTo: box.heightAnchor,multiplier: 0.4),
            textTopic.widthAnchor.constraint(equalTo: box.widthAnchor, multiplier: 0.9)
        
        ])
    }
}
