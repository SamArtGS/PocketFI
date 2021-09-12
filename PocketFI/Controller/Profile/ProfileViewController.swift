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
        Resource(id: 1, imageIcon: "tareas", resourceTitle: "Tareas"),
        
        Resource(id: 2, imageIcon: "series", resourceTitle: "Series de Ejercicios",resources: [
            PDFelement(id: 1, name: "Álgebra - Serie 1", size: 0, link: "www.google.com"),
            PDFelement(id: 1, name: "Calculo vectorial", size: 0, link: "www.google.com"),
            PDFelement(id: 1, name: "Álgebra lineal", size: 0, link: "www.google.com"),
            PDFelement(id: 1, name: "Metodología Investigación", size: 0, link: "www.google.com"),
            PDFelement(id: 1, name: "General porfirio", size: 0, link: "www.google.com"),
        ]),
        
        Resource(id: 3, imageIcon: "manualLab", resourceTitle: "Manuales de Prácticas"),
        Resource(id: 4, imageIcon: "horario", resourceTitle: "Horario"),
        Resource(id: 5, imageIcon: "calendar", resourceTitle: "Calendario"),
        Resource(id: 6, imageIcon: "asesoria", resourceTitle: "Asesorías"),
        Resource(id: 7, imageIcon: "examenes", resourceTitle: "Exámenes pasados")
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
            assert(false, "Invalid element type")
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width)/1.1, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 15, left: 10, bottom: 20, right: 10)
    }
}

extension ProfileViewController: ProfileCardDelegate{
    func PKAddCredential() {
        getCredential(studentID: 12345)
    }
}
