//
//  ClassesCollectionViewCell.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/18/21.
//

import UIKit

class ClassesCollectionViewCell: UICollectionViewCell {
    
    var element: Resource? {
        didSet{
            guard let element = element else { return }
            imageIcon.image = UIImage(named: element.imageIcon)
            titleText.text = element.resourceTitle
            setConstraints()
        }
    }
    
    private let id: Int? = 0
    
    
    private var box: UIView = {
        let view = UIView()
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray1
        view.layer.cornerRadius = 15
        view.clipsToBounds = true
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.gray.cgColor
        view.addShadow(opacy: 0.5)
        return view
    }()
    
    
    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .equalSpacing
        stack.alignment = .center
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let imageIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 10
        return imageView
    }()
    
    private let titleText: UILabel = {
        let label = UILabel()
        label.textColor = .blackLetter
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setConstraints(){
        titleText.font = .systemFont(ofSize: CGFloat(sizeLetters()), weight: .bold)
        self.layer.cornerRadius = 15
        self.clipsToBounds = true        
        addSubview(box)
        box.addSubview(stack)
        stack.addArrangedSubview(imageIcon)
        stack.addArrangedSubview(titleText)
        
        NSLayoutConstraint.activate([
            
            box.topAnchor.constraint(equalTo: topAnchor,constant: 5),
            box.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            box.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            box.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -10),
            
            stack.topAnchor.constraint(equalTo: box.topAnchor,constant: 15),
            stack.leadingAnchor.constraint(equalTo: box.leadingAnchor,constant: 5),
            
            
            imageIcon.widthAnchor.constraint(equalToConstant: 50),
            imageIcon.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
}
