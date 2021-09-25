//
//  CollectionImportantFaculty.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/27/21.
//

import UIKit

class CollectionImportantFaculty: UICollectionViewCell{
    
    weak var delegate: CellNewsDelegate?
    
    var colectionView: UICollectionView?
    var elements: [Noticia]? {
        didSet{
            setConstraints()
        }
    }
    
    override init(frame: CGRect) {
       super.init(frame: frame)
       colectionView = addCollection()
   }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func setConstraints(){
        guard let colectionView = colectionView else { return }
        addSubview(colectionView)
            
        NSLayoutConstraint.activate([
            colectionView.topAnchor.constraint(equalTo: topAnchor),
            colectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            colectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            colectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
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

extension CollectionImportantFaculty: UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return elements?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellMini", for: indexPath) as! CellNews
        cell.noticia = elements?[indexPath.item]
        return cell
    }
}

extension CollectionImportantFaculty: UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.didSelectNewAt(new: elements?[indexPath.item])
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
