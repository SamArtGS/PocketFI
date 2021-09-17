//
//  CollectionImportantFaculty.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/27/21.
//

import UIKit

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
