//
//  CollectionImportantFaculty.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/27/21.
//

import UIKit

private let reuseIdentifier = "Cell"

struct Noticia {
    let fecha: Date
    let titulo: String
    let miniatura: UIImage?
    let texto: String
}

class CellNews: UICollectionViewCell {
    
}

class CollectionImportantFaculty: UICollectionViewCell{

    var element: Noticia? {
        didSet{
            
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
    
   
    
    private let cellMini: CellNews = {
        let cellMini = CellNews()
        return cellMini
    }()
    
    
    override func draw(_ rect: CGRect) {
        let frameLayout = UICollectionViewFlowLayout()
        frameLayout.scrollDirection = .horizontal
        let collection = UICollectionView(frame: rect, collectionViewLayout: frameLayout)
        
        collection.register(CellNews.self, forCellWithReuseIdentifier: "cellMini")
        collection.delegate = self
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .white
        addSubview(collection)
        NSLayoutConstraint.activate([
            collection.topAnchor.constraint(equalTo: topAnchor),
            collection.leadingAnchor.constraint(equalTo: leadingAnchor),
            collection.trailingAnchor.constraint(equalTo: trailingAnchor),
            collection.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

}
extension CollectionImportantFaculty: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellMini", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}

extension CollectionImportantFaculty: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 30, height: 30)
    }
}
