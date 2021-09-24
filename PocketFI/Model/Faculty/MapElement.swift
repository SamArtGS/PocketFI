//
//  MapElement.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/23/21.
//

import UIKit
import MapKit

struct MapElement{
    let id: Int
    let title: String
    let lugar: String
    let latitude:Float
    let longitude:Float
    let coordinator: CLLocationCoordinate2D
    let icon:String
    let imageIcon: UIImage
    let color: UIColor
    
    init(id: Int, title: String, lugar: String, latitude:Float, longitude:Float, icon: String, color: UIColor) {
        coordinator = CLLocationCoordinate2D(latitude: CLLocationDegrees(latitude), longitude: CLLocationDegrees(longitude))
        self.id = id
        self.title = title
        self.lugar = lugar
        self.latitude = latitude
        self.longitude = longitude
        self.icon = icon
        self.imageIcon = UIImage(named: icon) ?? UIImage()
        self.color = color
    }
}
