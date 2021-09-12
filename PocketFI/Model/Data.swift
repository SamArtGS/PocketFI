//
//  Data.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/12/21.
//

import Foundation

struct DataClasses: Equatable, Hashable{
    
    static let resources: [Resource] = [
        Resource(id: 1, imageIcon: "tareas", resourceTitle: "Tareas"),
        Resource(id: 2, imageIcon: "series", resourceTitle: "Series de Ejercicios",resources: [
            
            PDFelement(id: 1, name: "Matemáticas Avanzadas - Serie 1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/FUNCIONES.pdf"),
            PDFelement(id: 2, name: "Matemáticas Avanzadas - Serie 2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/FUNCIONESANALITICAS.pdf"),
            PDFelement(id: 3, name: "Matemáticas Avanzadas - Serie 3", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/SERIEDELAURENT.pdf"),
            PDFelement(id: 4, name: "Matemáticas Avanzadas - Serie 4", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/TEOREMADELRESIDUO.pdf"),
            PDFelement(id: 5, name: "Matemáticas Avanzadas - Serie 5", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/SERIEDEFOURIER.pdf"),
            PDFelement(id: 6, name: "Matemáticas Avanzadas - Serie 6", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/INTEGRALDEFOURIER.pdf"),
            PDFelement(id: 7, name: "Matemáticas Avanzadas - Serie 7", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/MA/Series/TRANSFORMADADEFOURIER.pdf"),
            
            PDFelement(id: 8, name: "Análisis Numérico - Serie 1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie1.pdf"),
            PDFelement(id: 9, name: "Análisis Numérico - Serie 2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie2.pdf"),
            PDFelement(id: 10, name: "Análisis Numérico - Serie 3", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie3.pdf"),
            PDFelement(id: 11, name: "Análisis Numérico - Serie 4", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie4.pdf"),
            PDFelement(id: 12, name: "Análisis Numérico - Serie 5", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie5.pdf"),
            PDFelement(id: 13, name: "Análisis Numérico - Serie 6", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/AN/Series/Serie6.pdf"),
            
            
            PDFelement(id: 14, name: "Ecuaciones Diferenciales - Serie 1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie1.pdf"),
            PDFelement(id: 15, name: "Ecuaciones Diferenciales - Serie 2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie2.pdf"),
            PDFelement(id: 16, name: "Ecuaciones Diferenciales - Serie 3", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie3.pdf"),
            PDFelement(id: 17, name: "Ecuaciones Diferenciales - Serie 4", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie4.pdf"),
            PDFelement(id: 18, name: "Ecuaciones Diferenciales - Serie 4", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/ED/Series/Serie5.pdf"),
            
            PDFelement(id: 19, name: "Física", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Documentos/Series/CUADERNO-EJERCICIOS-F.pdf"),
            PDFelement(id: 20, name: "Física Experimental", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Documentos/Series/CUADERNO-EJERCICIOS-FE.pdf"),
            PDFelement(id: 21, name: "Fundamentos de Física", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Documentos/Series/CUADERNO-EJERCICIOS-FF.pdf"),
            
            PDFelement(id: 22, name: "Química - Serie 1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Q/Series/Serie_1.pdf"),
            PDFelement(id: 23, name: "Química - Serie 2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Q/Series/Serie_2.pdf"),
            PDFelement(id: 24, name: "Química - Serie 3", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Q/Series/Serie_3.pdf"),
            PDFelement(id: 25, name: "Química - Serie 4", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Q/Series/Serie_4.pdf"),
            PDFelement(id: 26, name: "Química - Serie 5", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Q/Series/Serie_5.pdf"),
            PDFelement(id: 27, name: "Química - Serie 6", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Q/Series/Serie_6.pdf"),
            PDFelement(id: 28, name: "Química - Serie 7", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Q/Series/Serie_7.pdf"),
            PDFelement(id: 28, name: "Química - Serie 8", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Q/Series/Serie_8.pdf"),
            
            PDFelement(id: 29, name: "Sist. Termodinámicos y Electrom. - Serie 1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie1_STEM_y_FTEM.pdf"),
            PDFelement(id: 28, name: "Sist. Termodinámicos y Electrom. - Serie 2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie2_STEM_y_FTEM.pdf"),
            
            
        ]),
        
        
        
        
        Resource(id: 3, imageIcon: "manualLab", resourceTitle: "Manuales de prácticas",resources: [
            PDFelement(id: 1, name: "Sist. Termodinámicos y Electrom. - Serie 2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie2_STEM_y_FTEM.pdf"),
            PDFelement(id: 1, name: "Sist. Termodinámicos y Electrom. - Serie 2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie2_STEM_y_FTEM.pdf"),
            PDFelement(id: 1, name: "Sist. Termodinámicos y Electrom. - Serie 2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie2_STEM_y_FTEM.pdf"),
            PDFelement(id: 1, name: "Sist. Termodinámicos y Electrom. - Serie 2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Series/serie2_STEM_y_FTEM.pdf"),
        ]),
        Resource(id: 4, imageIcon: "horario", resourceTitle: "Horario"),
        Resource(id: 5, imageIcon: "calendar", resourceTitle: "Calendario"),
        Resource(id: 6, imageIcon: "asesoria", resourceTitle: "Asesorías"),
        Resource(id: 7, imageIcon: "examenes", resourceTitle: "Exámenes pasados")
    ]
}
