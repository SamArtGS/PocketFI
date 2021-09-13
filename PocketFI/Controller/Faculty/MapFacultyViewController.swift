//
//  MapFacultyViewController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/23/21.
//

import UIKit
import MapKit

class MapFacultyViewController: UIViewController {
    
    
    private let mapView: MKMapView = {
        let mapView = MKMapView()
        mapView.translatesAutoresizingMaskIntoConstraints = false
        return mapView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mapView)
        setNavConfig(title: "Mapa Facultad")
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.largeTitleDisplayMode = .never
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationItem.largeTitleDisplayMode = .automatic
    }
    
    

}
extension UINavigationController{
    
    open override func viewDidLayoutSubviews() {
        navigationController?.navigationBar.backgroundColor = UIColor(named: "AzulUNAM")
        navigationController?.navigationBar.tintColor = .white
    }
}
