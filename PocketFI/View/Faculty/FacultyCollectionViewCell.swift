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
            
            if unwrap.labelText == "Mapa"{
                let imageView = UIImageView(image: UIImage(named: "mapBackground"))
                imageView.translatesAutoresizingMaskIntoConstraints = false
                imageView.contentMode = .scaleToFill
                imageView.clipsToBounds = true
                imageView.layer.cornerRadius = 30
                box = imageView
            }else{
                box.backgroundColor = unwrap.color
            }
            imageicon.image = unwrap.image
            textTopic.text = unwrap.labelText
        }
    }
    
    
    private var box: UIView = {
        let view = UIView()
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 30
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
        etiqueta.font = .systemFont(ofSize: 20, weight: .bold)
        etiqueta.textColor = .white
        etiqueta.lineBreakMode = .byWordWrapping
        etiqueta.numberOfLines = 0
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    
    override func draw(_ rect: CGRect) {
        addSubview(box)
        addSubview(imageicon)
        box.addSubview(textTopic)
        NSLayoutConstraint.activate([
            box.topAnchor.constraint(equalTo: topAnchor,constant: 25),
            box.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            box.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -5),
            box.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -5),
            
            textTopic.centerXAnchor.constraint(equalTo: box.centerXAnchor),
            textTopic.centerYAnchor.constraint(equalTo: box.centerYAnchor),
            
            imageicon.topAnchor.constraint(equalTo: topAnchor),
            imageicon.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageicon.heightAnchor.constraint(equalToConstant: 50),
            imageicon.widthAnchor.constraint(equalToConstant: 50),
        ])
    }
    
}
