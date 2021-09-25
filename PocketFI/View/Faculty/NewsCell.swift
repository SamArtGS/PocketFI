//
//  NewsCell.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/17/21.
//

import UIKit
import Lottie

class CellNews: UICollectionViewCell {
    
    private weak var lottieImage: AnimationView? = nil
    
    private var flag: Bool = true

    var noticia: Noticia? {
        didSet{
            guard let noticia = noticia else { return }
                addSubview(box)
                box.addSubview(stack)

                lottieImage = imageNew(noticia.lottie ?? "newsOne")
                guard let lottieImage = lottieImage else { return }
                stack.addArrangedSubview(lottieImage)
                
                box.addShadow(opacy: 0.3)
                
                let formatter = DateFormatter()
                formatter.dateFormat = "dd-MM-yyyy HH:mm"
                
                textTopic.text = noticia.titulo
                subtitle.text = formatter.string(from: noticia.fecha)
                
                stack.addArrangedSubview(textTopic)
                stack.addArrangedSubview(subtitle)
            
                initConstraints()
                NSLayoutConstraint.activate([
                    lottieImage.heightAnchor.constraint(equalTo: box.heightAnchor, multiplier: 0.7)
                ])
                lottieImage.play()
        }
        willSet{
            stack.subviews.forEach { view in
                view.removeFromSuperview()
            }
            stack.removeFromSuperview()
            box.removeFromSuperview()
            
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
        imageView.loopMode = .playOnce
        imageView.animationSpeed = 1
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
   }
    
    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.alignment = .leading
        stack.spacing = 0
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let textTopic : UILabel = {
        let etiqueta = UILabel()
        etiqueta.font = .Roboto(.bold, size: 18)
        etiqueta.textColor = UIColor(named: "Letter1")
        etiqueta.numberOfLines = 2
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .left
        return etiqueta
    }()
    
    private let subtitle : UILabel = {
        let etiqueta = UILabel()
        etiqueta.font = .Roboto(.regular, size: 12)
        etiqueta.textColor = .blackLetter
        etiqueta.numberOfLines = 2
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .left
        etiqueta.sizeToFit()
        return etiqueta
    }()
    
    
    func initConstraints(){
        
        NSLayoutConstraint.activate([
            box.topAnchor.constraint(equalTo: topAnchor),
            box.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            box.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            box.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            
            stack.topAnchor.constraint(equalTo: box.topAnchor),
            stack.leadingAnchor.constraint(equalTo: box.leadingAnchor, constant: 10),
            stack.trailingAnchor.constraint(equalTo: box.trailingAnchor),
            stack.bottomAnchor.constraint(equalTo: box.bottomAnchor),
            
            subtitle.heightAnchor.constraint(equalTo: box.heightAnchor, multiplier: 0.1),
        ])
    }
}
