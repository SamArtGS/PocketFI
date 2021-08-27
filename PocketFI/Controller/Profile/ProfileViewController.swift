//
//  PerfilViewController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/18/21.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var collectionaleView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionaleView.delegate = self
        collectionaleView.dataSource = self
    }

}

extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionaleView.dequeueReusableCell(withReuseIdentifier: "profileCell", for: indexPath) as! ProfileCollectionViewCell
        cell.backgroundColor = .red
        return cell
    }
}

extension ProfileViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let headerView = collectionaleView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerProfileCell", for: indexPath)
            
            guard let typedHeaderView = headerView as? ProfileInfo
                else { return headerView }
            
            return typedHeaderView
            
        default:
            assert(false, "Invalid element type")
        }
        
    }
    
}
