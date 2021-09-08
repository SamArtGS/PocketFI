//
//  Student.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/6/21.
//

import Foundation

struct Student {
    let id: String
    let name: String
    let ap_pat: String
    let ap_mat: String
    let anioIngreso: String
    let numCuenta: String
    var pendientes: [Tareas]?
    var notificaciones: [NotificacionsStudent]?
}

struct NotificacionsStudent{
    
}

struct Tareas {
    
}
