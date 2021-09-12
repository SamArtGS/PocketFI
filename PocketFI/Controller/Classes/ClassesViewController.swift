//
//  ClasesViewController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/18/21.
//

import UIKit

class ClassesViewController: UIViewController {
    
    @IBOutlet weak var Materials: UICollectionView!
    
    let resources: [Resource] = [
        Resource(id: 1, imageIcon: "tareas", resourceTitle: "Tareas", resources: [
            PDFelement(id: 1, name: "Calculo integral", size: 40, link: "www.google.com"),
            PDFelement(id: 1, name: "Calculo vectorial", size: 40, link: "www.google.com"),
            PDFelement(id: 1, name: "Álgebra lineal", size: 40, link: "www.google.com"),
            PDFelement(id: 1, name: "Metodología Investigación", size: 40, link: "www.google.com"),
            PDFelement(id: 1, name: "General porfirio", size: 40, link: "www.google.com"),
            
        
        ]),
        Resource(id: 2, imageIcon: "series", resourceTitle: "Series de Ejercicios"),
        Resource(id: 3, imageIcon: "manualLab", resourceTitle: "Manuales de Prácticas"),
        Resource(id: 4, imageIcon: "horario", resourceTitle: "Horario"),
        Resource(id: 5, imageIcon: "calendar", resourceTitle: "Calendario"),
        Resource(id: 6, imageIcon: "asesoria", resourceTitle: "Asesorías"),
        Resource(id: 7, imageIcon: "examenes", resourceTitle: "Exámenes pasados")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Materials.showsVerticalScrollIndicator = false
        Materials.delegate = self
        Materials.dataSource = self
    }
}

extension ClassesViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return resources.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = Materials.dequeueReusableCell(withReuseIdentifier: "classesCell", for: indexPath) as! ClassesCollectionViewCell
        cell.element = resources[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        seleccionarPath(index: indexPath.item)
    }
    
    func seleccionarPath(index: Int) {
        
        guard let resources = resources[index].resources else { return }
        
        switch index {
        case 0:
            navigationController?.pushViewController(TableViewForPDFs(titulo: "Tareas", lista: resources), animated: true)
            break
        case 1:
            break
        case 2:
            break
        case 3:
            break
        case 4:
            break
        case 5:
            break
        default:
            break
        }
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
