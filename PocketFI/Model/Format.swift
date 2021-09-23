//
//  Format.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/17/21.
//

import UIKit

struct Formato {
    let simbolo: String
    let color: UIColor
    let fuente: UIFont
    let regex: String
    
    init(simbolo: String, color: UIColor, fuente: UIFont){
        self.simbolo = simbolo
        self.regex = "\\\(simbolo)[a-zA-Z0-9_ \n áéíóúÁÉÍÓÚ,¿?•\\. -]*\\\(simbolo)"
        self.color = color
        self.fuente = fuente
    }
}

struct PosicionRegexColor {
    let formato: Formato
    let localizacion: Int
    let longitud: Int
}
