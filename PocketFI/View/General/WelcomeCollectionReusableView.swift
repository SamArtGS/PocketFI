//
//  WelcomeCollectionReusableView.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/20/21.
//

import UIKit

class WelcomeCollectionReusableView: UICollectionReusableView {
        
    @IBOutlet var imagenWelcome: UIImageView!
    
    
    override func draw(_ rect: CGRect) {
        //imagenWelcome.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 30.0)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imagenWelcome.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 15.0)
    }
}
