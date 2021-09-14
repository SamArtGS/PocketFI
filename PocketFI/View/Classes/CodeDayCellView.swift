//
//  CodeDayCellView.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/13/21.
//

import UIKit
import JTAppleCalendar

class CodeDayCellView: JTACDayCell {
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(red: 1.0, green: 0.5, blue: 0.0, alpha: 1.0)
        let r1 = CGRect(x: 0, y: 0, width: 25, height: 25)
        context?.addRect(r1)
        context?.fillPath()
        context?.setStrokeColor(red: 1.0, green: 1.0, blue: 0.5, alpha: 1.0)
        context?.addEllipse(in: CGRect(x: 0, y: 0, width: 25, height: 25))
        context?.strokePath()
    }
}
