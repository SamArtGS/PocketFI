//
//  FacultyElement.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/23/21.
//

import UIKit

struct FacultyElement {
    let image:UIImage?
    let labelText:String
    let color: UIColor
    
    init(image:String, labelText:String, color: UIColor) {
        self.image = UIImage(named: image)
        self.labelText = labelText
        self.color = color
    }
}
