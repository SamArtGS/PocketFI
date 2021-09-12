//
//  ClasesViewController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/18/21.
//

import UIKit

class ClassesViewController: UIViewController {
    
    @IBOutlet weak var Materials: UICollectionView!
    
    let resources: [Resource] = DataClasses.resources
    
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
        switch index {
        case 0:
            navigationController?.pushViewController(HomeWorkViewController(title: "Tareas"), animated: true)
            break
        case 1:
            guard let resources = resources[index].resources else { return }
            navigationController?.pushViewController(TableViewForPDFs(titulo: "Serie de ejercicios", lista: resources), animated: true)
            break
        case 2:
            guard let resources = resources[index].resources else { return }
            navigationController?.pushViewController(TableViewForPDFs(titulo: "Manual de prácticas", lista: resources), animated: true)
            break
        case 3:
            navigationController?.pushViewController(ScheduleVController(title: "Horario"), animated: true)
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
