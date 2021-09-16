//
//  PerfilViewController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/18/21.
//

import UIKit


class ProfileViewController: UIViewController {

    @IBOutlet var collectionaleView: UICollectionView!
    var bool: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let token = UserDefaults.standard.value(forKey: "UserToken") as? String {
            collectionaleView.delegate = self
            collectionaleView.dataSource = self
            print(token)
        } else {
            collectionaleView.delegate = self
            collectionaleView.dataSource = self
            //loggin()
        }
    }
    
    let resources: [Resource] = [
        Resource(id: 1, imageIcon: "icons8-rating", resourceTitle: "Avance Curricular"),
        Resource(id: 2, imageIcon: "icons8-contract", resourceTitle: "Constancias"),
        Resource(id: 4, imageIcon: "icons8-goal", resourceTitle: "Servicio Social"),
        Resource(id: 4, imageIcon: "icons8-business_network", resourceTitle: "Ofertas laborales")
    ]
}

extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return resources.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionaleView.dequeueReusableCell(withReuseIdentifier: "profileCell", for: indexPath) as! ProfileCollectionViewCell
        cell.element = resources[indexPath.item]
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
            typedHeaderView.delegate = self
            return typedHeaderView
            
        default:
            return UICollectionReusableView()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width)/1.1, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
}

extension ProfileViewController: ProfileCardDelegate{
    func PKAddCredential() {
        getCredential(studentID: 12345)
    }
}
