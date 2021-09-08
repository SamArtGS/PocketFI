//
//  FacultadViewController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/18/21.
//

import UIKit

class FacultyViewController: UIViewController {

    @IBOutlet var facultyCollection: UICollectionView!
    let randomImageSelector = String(Int.random(in: 1..<6))
    
    let elements:[FacultyElement] = [
        FacultyElement(image: "infraestructura", labelText: "Infraestructura", color: .systemBlue),
        FacultyElement(image: "infraestructura", labelText: "Infraestructura", color: .systemBlue),
        FacultyElement(image: "tramites", labelText: "Preguntas \nfrecuentes", color: .systemOrange),
        FacultyElement(image: "mapa", labelText: "Mapa", color: .systemRed),
        FacultyElement(image: "gaceta", labelText: "Gaceta", color: .systemGreen),
        FacultyElement(image: "eventos", labelText: "Eventos", color: .systemPurple),
        FacultyElement(image: "profesores", labelText: "Profesores", color: .systemTeal),
        FacultyElement(image: "contacto", labelText: "Contactos\n Oficiales", color: .systemYellow)
    ]
    
    
    // MARK: Life Cycle VC
    
    override func viewDidLoad() {
        super.viewDidLoad()
        facultyCollection.delegate = self
        facultyCollection.dataSource = self

        addShadowToBar()
    }
    
    @IBAction func showNotifications(_ sender: Any) {
        navigationController?.pushViewController(Notifications(), animated: true)
    }
    
}


extension FacultyViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return elements.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.item {
        case 0:
            collectionView.register(CollectionImportantFaculty.self, forCellWithReuseIdentifier: "newsCell")
            let cell = facultyCollection.dequeueReusableCell(withReuseIdentifier: "newsCell", for: indexPath) as! CollectionImportantFaculty
            cell.setConstraints()
            return cell
        default:
            let cell = facultyCollection.dequeueReusableCell(withReuseIdentifier: "facultyCell", for: indexPath) as! FacultyCollectionViewCell
            cell.element = elements[indexPath.item]
            return cell
        
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.item {
        case 2:
            navigationController?.pushViewController(MapFacultyViewController(), animated: true)
        default:
            return
        }
    }
    
}

extension FacultyViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if UIDevice().userInterfaceIdiom == .phone {
            switch indexPath.item {
            case 0:
                return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width - 21), height: (view.safeAreaLayoutGuide.layoutFrame.width/1.4))
            case 3:
                return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width/1.1), height: (view.safeAreaLayoutGuide.layoutFrame.width/2.5))
            default:
                return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width/2.14), height: (view.safeAreaLayoutGuide.layoutFrame.width/2.2))
            }
        }else{
            return CGSize(width: 150, height: 200)
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let headerView = facultyCollection.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "welcome", for: indexPath)
            
            guard let typedHeaderView = headerView as? WelcomeCollectionReusableView
                else { return headerView }
            typedHeaderView.imagenWelcome.image = UIImage(named: "welcome"+randomImageSelector)
            return typedHeaderView
            
        default:
            assert(false, "Invalid element type")
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func addShadowToBar() {
        navigationController?.navigationBar.layer.masksToBounds = false
        navigationController?.navigationBar.layer.shadowOpacity = 0.6
        navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 2)
        navigationController?.navigationBar.layer.shadowRadius =  6
        navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 20, right: 10)
    }
}
