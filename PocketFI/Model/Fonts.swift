//
//  Fonts.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/17/21.
//

import UIKit

extension UIFont {

    public enum formato: String {
        case extraboldItalic = "-ExtraboldItalic"
        case semiboldItalic = "-SemiboldItalic"
        case semibold = "-Semibold"
        case regular = ""
        case lightItalic = "Light-Italic"
        case light = "-Light"
        case italic = "-Italic"
        case black = "-Black"
        case extraBold = "-Extrabold"
        case boldItalic = "-BoldItalic"
        case bold = "-Bold"
    }
    
    static func Roboto(_ type: formato = .regular, size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "Roboto\(type.rawValue)", size: size)!
    }
    
    static func Lato(_ type: formato = .regular, size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "Lato\(type.rawValue)", size: size)!
    }

    var isBold: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitBold)
    }

    var isItalic: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitItalic)
    }

}
