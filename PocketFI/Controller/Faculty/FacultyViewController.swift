//
//  FacultadViewController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/18/21.
//

import UIKit

class FacultyViewController: UIViewController {

    @IBOutlet var facultyCollection: UICollectionView!
    
    @IBOutlet var goToNotificationsVC: UIBarButtonItem!
    
    let elements:[FacultyElement] = [
        FacultyElement(image: "infraestructura", labelText: "Infraestructura", color: .systemBlue),
        FacultyElement(image: "mapa", labelText: "Mapa", color: .systemRed),
        FacultyElement(image: "tramites", labelText: "Trámites", color: .systemOrange),
        FacultyElement(image: "gaceta", labelText: "Gaceta", color: .systemGreen),
        FacultyElement(image: "eventos", labelText: "Eventos", color: .systemPurple),
        FacultyElement(image: "calendario", labelText: " Calendario \nEscolar", color: .systemPink),
        FacultyElement(image: "profesores", labelText: "Profesores", color: .systemTeal),
        FacultyElement(image: "contacto", labelText: "Contactos\n Oficiales", color: .systemYellow)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        facultyCollection.delegate = self
        facultyCollection.dataSource = self
        
        facultyCollection.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(facultyCollection)
        NSLayoutConstraint.activate([
            facultyCollection.topAnchor.constraint(equalTo: view.topAnchor, constant: -200),
            facultyCollection.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            facultyCollection.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            facultyCollection.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
}

extension FacultyViewController: UICollectionViewDelegate{
    
    
}

extension FacultyViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return elements.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = facultyCollection.dequeueReusableCell(withReuseIdentifier: "facultyCell", for: indexPath) as! FacultyCollectionViewCell
        cell.element = elements[indexPath.item]
        return cell
    }
    
}

extension FacultyViewController: UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if UIDevice().userInterfaceIdiom == .phone {
            return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width/2.2), height: (view.safeAreaLayoutGuide.layoutFrame.width/2.5))
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
            
            typedHeaderView.imagenWelcome.image = UIImage(named: "welcome1")
            return typedHeaderView
            
        default:
            assert(false, "Invalid element type")
        }
        
    }
    
    
    //    private func addShape() {
    //        let shapeLayer = CAShapeLayer()
    //        let radious = 30.0
    //        shapeLayer.path = createPath()
    //        shapeLayer.strokeColor = UIColor.gray.withAlphaComponent(0.1).cgColor
    //        shapeLayer.fillColor = UIColor.white.cgColor
    //        shapeLayer.lineWidth = 2
    //        shapeLayer.shadowColor = UIColor.black.cgColor
    //        shapeLayer.shadowOffset = CGSize(width: 0   , height: -3);
    //        shapeLayer.shadowOpacity = 0.2
    //        shapeLayer.shadowPath =  UIBezierPath(roundedRect: facultyCollection.bounds, cornerRadius: CGFloat(radious)).cgPath
    //
    //
    //        if let oldShapeLayer = facultyCollection.shapeLayer {
    //            facultyCollection.layer.replaceSublayer(oldShapeLayer, with: shapeLayer)
    //        } else {
    //            facultyCollection.layer.insertSublayer(shapeLayer, at: 0)
    //        }
    //
    //        self.facultyCollection.layer = shapeLayer
    //    }
    //
    //    private func createPath() -> CGPath {
    //        let path = UIBezierPath(
    //            roundedRect: bounds,
    //            byRoundingCorners: [.topLeft, .topRight],
    //            cornerRadii: CGSize(width: 0.8, height: 0.0))
    //
    //        return path.cgPath
    //    }
}
