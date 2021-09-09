//
//  ClasesViewController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/18/21.
//

import UIKit

class ClassesViewController: UIViewController {
    
    @IBOutlet weak var Materials: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Materials.delegate = self
        Materials.dataSource = self
    }
}

extension ClassesViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = Materials.dequeueReusableCell(withReuseIdentifier: "classesCell", for: indexPath) as! ClassesCollectionViewCell
        cell.backgroundColor = .gray
        cell.roundCorners(corners: .allCorners, radius: 15)
        return cell
    }
}

extension ClassesViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width-21, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 10, bottom: 30, right: 10)
    }
}
