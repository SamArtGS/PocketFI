//
//  News.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/17/21.
//

import UIKit

protocol CellNewsDelegate {
    func didSelectNewAt(new: Noticia)
}

struct Noticia {
    let id: Int
    let fecha: Date
    let titulo: String
    let miniatura: String?
    let texto: String
    let lottie: String?
    let imagenes: [String]?
    
    init(id: Int, fecha: Date, titulo: String, miniatura: String = "", texto: String, lottie: String = "", imagenes: [String] = []) {
        self.id = id
        self.fecha = fecha
        self.titulo = titulo
        self.miniatura = miniatura
        self.texto = texto
        self.lottie = lottie
        self.imagenes = imagenes
    }
}
