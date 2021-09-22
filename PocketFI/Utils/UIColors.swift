//
//  UIColors.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/8/21.
//
// Extraidos de COOLORS.com

import UIKit

extension UIColor{
    static let blackLetter = UIColor(named: "Letter1")!
    static let gray1 = UIColor(named: "whiteGray")!
    static let whiteLetter = UIColor(named: "AccentColor")!
    static let azulUnam = UIColor(named: "AzulUNAM")!
    static let oroUnam = UIColor(named: "OroUNAM")!
    static let UsafaBlue = UIColor(named: "UsafaBlue")!
    static let Emerald = UIColor(named: "Emerald")!
    static let Magnolia = UIColor(named: "Magnolia")!
    static let MaximumRed = UIColor(named: "MaximumRed")!
    static let OrangeYellowCrayola = UIColor(named: "OrangeYellowCrayola")!
    static let RussianViolet = UIColor(named: "RussianViolet")!
}
enum elementMarker {
    case building
    case monument
    case sportSite
    case meals
    case extras
    
    func getColorMarket() -> UIColor{
        switch self {
        case .building:
            return .Emerald
        case .monument:
            return .Magnolia
        case .sportSite:
            return .RussianViolet
        case .meals:
            return .OrangeYellowCrayola
        case .extras:
            return .UsafaBlue
        }
    }
}
