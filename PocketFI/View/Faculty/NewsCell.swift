//
//  NewsCell.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/17/21.
//

import UIKit
import Lottie

class CellNews: UICollectionViewCell {
    
    private var lottieImage: AnimationView? = nil

    var noticia: Noticia? {
        didSet{
            guard let noticia = noticia else { return }
            
            addSubview(box)
            box.addSubview(stack)

            lottieImage = imageNew(noticia.lottie ?? "newsOne")
            guard let lottieImage = lottieImage else { return }
            stack.addArrangedSubview(lottieImage)
            stack.addArrangedSubview(textTopic)
            box.sendSubviewToBack(lottieImage)
            box.addShadow(opacy: 0.3)
            lottieImage.play()
            
            textTopic.text = noticia.titulo
            
            initConstraints()
            NSLayoutConstraint.activate([
                lottieImage.leadingAnchor.constraint(equalTo: box.leadingAnchor),
                lottieImage.trailingAnchor.constraint(equalTo: box.trailingAnchor)
            ])
            
            
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
    
    
    
    private let imageNew: (String) ->  AnimationView = { lottie in
        let imageView = AnimationView(name: lottie)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.loopMode = .repeat(4)
        imageView.animationSpeed = 1
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
   }
    
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
            
            textTopic.heightAnchor.constraint(equalTo: box.heightAnchor,multiplier: 0.4),
            textTopic.widthAnchor.constraint(equalTo: box.widthAnchor, multiplier: 0.9)
        
        ])
    }
}
