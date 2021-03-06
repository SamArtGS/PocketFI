//
//  MapFacultyViewController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/23/21.
//

import UIKit
import MapKit


class MapFacultyViewController: UIViewController {
    
    let pines = DataClasses.pines
    
    private let mapView: MKMapView = {
        let mapView = MKMapView()
        mapView.translatesAutoresizingMaskIntoConstraints = false
        return mapView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mapView)
        mapView.delegate = self
        setNavConfig(title: "Mapa Facultad")
        keepOnUniversity()
        placePins() 
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func keepOnUniversity(){
        let oahuCenter = CLLocation(latitude: 19.325445, longitude: -99.185339)
           let region = MKCoordinateRegion(
             center: oahuCenter.coordinate,
             latitudinalMeters: 1450,
             longitudinalMeters: 1600)
        if #available(iOS 13.0, *) {
            mapView.setCameraBoundary(
                MKMapView.CameraBoundary(coordinateRegion: region),
                animated: true)
            let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 9000)
            mapView.setCameraZoomRange(zoomRange, animated: true)
        }
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

class MKMarkerAnnotationViewCustom: MKMarkerAnnotationView{
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MapFacultyViewController: MKMapViewDelegate{
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: "MyMarker")
        
        pines.forEach { element in
            if element.title == annotation.title{
                annotationView.glyphImage = element.imageIcon
                annotationView.markerTintColor = element.color
            }
        }
        
        return annotationView
    }
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
       
    }
    
    
    func placePins() {
        for pin in pines{
            let annotation = MKPointAnnotation()
            annotation.coordinate = pin.coordinator
            annotation.title = pin.title
            mapView.addAnnotation(annotation)
        }
    }
}
