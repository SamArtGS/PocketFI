//
//  FacultadCollectionViewCell.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/18/21.
//

import UIKit

class FacultyCollectionViewCell: UICollectionViewCell {
    
    var element: FacultyElement? {
        didSet{
            guard let unwrap = element else { return }
            box.layer.borderWidth = 0.5
            box.layer.borderColor = UIColor.gray.cgColor
            imageicon.image = unwrap.image
            textTopic.text = unwrap.labelText
        }
    }
    
    
    private var box: UIView = {
        let view = UIView()
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray1
        view.layer.cornerRadius = 15
        view.clipsToBounds = true
        return view
    }()
    
    private let imageicon: UIImageView = {
       let imageView = UIImageView()
       imageView.translatesAutoresizingMaskIntoConstraints = false
       imageView.isUserInteractionEnabled = true
       imageView.contentMode = .scaleAspectFit
       return imageView
   }()
    
    private let textTopic : UILabel = {
        let etiqueta = UILabel()
        etiqueta.lineBreakMode = .byWordWrapping
        etiqueta.numberOfLines = 0
        etiqueta.textColor = .blackLetter
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    
    override func draw(_ rect: CGRect) {
        textTopic.font = .systemFont(ofSize: CGFloat(sizeLetters()-5), weight: .bold)
        addShadow(opacy: 0.5)
        addSubview(box)
        addSubview(imageicon)
        box.addSubview(textTopic)
        NSLayoutConstraint.activate([
            box.topAnchor.constraint(equalTo: topAnchor,constant: 25),
            box.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            box.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -5),
            box.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -5),
            
            textTopic.centerXAnchor.constraint(equalTo: box.centerXAnchor),
            textTopic.centerYAnchor.constraint(equalTo: box.centerYAnchor, constant: 10),
            
            imageicon.topAnchor.constraint(equalTo: topAnchor),
            imageicon.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageicon.heightAnchor.constraint(equalToConstant: 50),
            imageicon.widthAnchor.constraint(equalToConstant: 50),
        ])
    }
    
}
