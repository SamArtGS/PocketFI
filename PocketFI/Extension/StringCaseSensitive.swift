//
//  StringCaseSensitive.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/11/21.
//

import UIKit
extension String {
    var forSorting: String {
        let simple = folding(options: [.diacriticInsensitive, .widthInsensitive, .caseInsensitive], locale: nil)
        let nonAlphaNumeric = CharacterSet.alphanumerics.inverted
        return simple.components(separatedBy: nonAlphaNumeric).joined(separator: "")
    }
}
