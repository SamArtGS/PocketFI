//
//  CrendentialView.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/8/21.
//

import UIKit

class CrendentialView: UIView {
    
    var student: Student? {
        didSet{
            guard let student = student else { return }
            
            imageStudent.image = UIImage(named: student.imagePerfil)
            fullName.text = student.name + " " + student.ap_pat + " " + student.ap_mat
            numCuenta.text = student.numCuenta
            carrera.text = student.carrera
            
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy"
            generacion.text = formatter.string(from: student.anioIngreso)
            
        }
    }
    
    private let card: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "cardBack")
        imageView.layer.cornerRadius = 15
        imageView.clipsToBounds = true
        imageView.addBlurEffect(alpha: 0.5)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        return imageView
   }()
    
    private let stack: UIStackView = {
       let stack:UIStackView = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.alignment = .leading
        stack.spacing = 25
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let imageStudent: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.layer.cornerRadius = 30
        imageView.backgroundColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1.0)
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
   }()
    
    private let InitText: CustomUILabel = {
        let etiqueta = CustomUILabel()
        etiqueta.font = .Roboto(.regular, size: 14)
        etiqueta.text = "*Universidad Nacional Autónoma de Mexico*\nFacultad de Ingeniería"
        etiqueta.lineBreakMode = .byWordWrapping
        etiqueta.numberOfLines = 0
        etiqueta.textColor = .white
        etiqueta.addShadow(opacy: 0.5)
        etiqueta.sizeToFit()
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    private let fullName: UILabel = {
        let etiqueta = UILabel()
        etiqueta.font = .Roboto(.bold, size: 20)
        etiqueta.lineBreakMode = .byWordWrapping
        etiqueta.numberOfLines = 0
        etiqueta.textColor = .white
        etiqueta.addShadow(opacy: 0.4)
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    private let numCuenta: UILabel = {
        let etiqueta = UILabel()
        etiqueta.font = .Roboto(.bold, size: 16)
        etiqueta.lineBreakMode = .byWordWrapping
        etiqueta.numberOfLines = 0
        etiqueta.addShadow(opacy: 0.4)
        etiqueta.textColor = .white
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    private let carrera: UILabel = {
        let etiqueta = UILabel()
        etiqueta.font = .Roboto(.regular, size: 14)
        etiqueta.lineBreakMode = .byWordWrapping
        etiqueta.numberOfLines = 0
        etiqueta.addShadow(opacy: 0.4)
        etiqueta.textColor = .white
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    private let generacion: UILabel = {
        let etiqueta = UILabel()
        etiqueta.font = .Roboto(.regular, size: 14)
        etiqueta.lineBreakMode = .byWordWrapping
        etiqueta.numberOfLines = 0
        etiqueta.textColor = .white
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    override init(frame: CGRect) {
       super.init(frame: frame)
        setConstraints()
   }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = false
        addSubview(card)
        addSubview(imageStudent)
        addSubview(generacion)
        addSubview(stack)
        addSubview(InitText)
        
        stack.addArrangedSubview(fullName)
        stack.addArrangedSubview(numCuenta)
        stack.addArrangedSubview(carrera)
        
        NSLayoutConstraint.activate([
            card.topAnchor.constraint(equalTo: topAnchor),
            card.leadingAnchor.constraint(equalTo: leadingAnchor),
            card.trailingAnchor.constraint(equalTo: trailingAnchor),
            card.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            InitText.topAnchor.constraint(equalTo: topAnchor,constant: 5),
            InitText.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 5),
            InitText.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            InitText.heightAnchor.constraint(equalToConstant: 60),
            
            imageStudent.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageStudent.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            imageStudent.widthAnchor.constraint(equalToConstant:  70),
            imageStudent.heightAnchor.constraint(equalToConstant: 70),
            
            stack.topAnchor.constraint(equalTo: InitText.bottomAnchor, constant: 30),
            stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            stack.trailingAnchor.constraint(equalTo: imageStudent.leadingAnchor, constant: 5),
            stack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            generacion.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            generacion.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
        ])
    }
    

}
