//
//  ClasesViewController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/18/21.
//

import UIKit

class ClassesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "classesCell", for: indexPath) as! ClassesCollectionViewCell
        
        cell.textLbl.text = "\(indexPath.row)"
        return cell
    }
    

    @IBOutlet weak var classesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        classesCollectionView.delegate = self
        classesCollectionView.dataSource = self
    }
    
    

}
