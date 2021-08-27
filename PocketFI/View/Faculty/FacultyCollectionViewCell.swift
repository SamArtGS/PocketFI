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
                box.layer.borderWidth = 1
                box.layer.borderColor = unwrap.color.cgColor
                
            }
            imageicon.image = unwrap.image
            textTopic.text = unwrap.labelText
        }
    }
    
    
    private var box: UIView = {
        let view = UIView()
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
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
        etiqueta.textColor = UIColor(named: "AzulUNAM")
        etiqueta.lineBreakMode = .byWordWrapping
        etiqueta.numberOfLines = 0
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    
    override func draw(_ rect: CGRect) {
        addShadow()
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
extension UIView{
    func addShadow(){
        layer.cornerRadius = 15.0
        layer.borderWidth = 0.0
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowRadius = 3.0
        layer.shadowOpacity = 0.7
        layer.masksToBounds = false //<-
    }
}
