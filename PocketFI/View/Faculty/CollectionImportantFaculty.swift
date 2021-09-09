//
//  CollectionImportantFaculty.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/27/21.
//

import UIKit

struct Noticia {
    let id: Int
    let fecha: String
    let titulo: String
    let miniatura: UIImage?
    let texto: String
}

protocol CellNewsDelegate {
    func didSelectNewAt(new: Noticia)
}

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
        view.backgroundColor = UIColor(named: "whiteGray")
        view.clipsToBounds = true
        return view
    }()
    
    private let imageNew: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
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
        
        imageNew.image = UIImage(named: "screen1")
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

class CollectionImportantFaculty: UICollectionViewCell{
    
    var delegate: CellNewsDelegate?
    
    var elements: [Noticia]? {
        didSet{
            setConstraints()
        }
    }
    
    
    
    func setConstraints(){
        let coleccionView = addCollection()
        addSubview(coleccionView)
        
        NSLayoutConstraint.activate([
            coleccionView.topAnchor.constraint(equalTo: topAnchor),
            coleccionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            coleccionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            coleccionView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        
    }
    func addCollection() -> UICollectionView {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let coleccionView = UICollectionView(frame: self.frame, collectionViewLayout: layout)
        coleccionView.showsHorizontalScrollIndicator = false
        coleccionView.isPagingEnabled = true
        coleccionView.translatesAutoresizingMaskIntoConstraints = false
        coleccionView.register(CellNews.self, forCellWithReuseIdentifier: "cellMini")
        coleccionView.backgroundColor = UIColor(named: "AccentColor")
        coleccionView.delegate = self
        coleccionView.dataSource = self
        return coleccionView
    }

}

extension CollectionImportantFaculty: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellMini", for: indexPath) as! CellNews
        cell.initConstraints()
        return cell
    }
    
}

extension CollectionImportantFaculty: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: safeAreaLayoutGuide.layoutFrame.width, height: safeAreaLayoutGuide.layoutFrame.height - 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
