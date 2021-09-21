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
            PDFelement(id: 1, name: "Química", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Q/LQ/MADO-12%20-%20A%20distancia.pdf"),
            PDFelement(id: 2, name: "Química para ciencias de la tierra", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Q/LQ/MADO-13%20-%20A%20distancia.pdf"),
            PDFelement(id: 3, name: "Sistemas químicos en ingeniería", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Q/LQ/MADO-14%20-%20A%20distancia.pdf"),
            PDFelement(id: 4, name: "Química orgánica", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Q/LQ/MADO-79%20-%20A%20distancia.pdf"),
            PDFelement(id: 5, name: "Acústica y óptica", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Curso/MADO-10_AyO.pdf"),
            PDFelement(id: 6, name: "Cinemática y dinámica", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/LabM/cindin2016/P1.pdf"),
            PDFelement(id: 7, name: "Electricidad y magnetismo", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyM/Practicas/ManualEyM%20_modalidadDistancia.pdf"),
            PDFelement(id: 8, name: "Electromagnetismo y óptica", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/EyO/Documentos/MADO-16-EMO.pdf"),
            PDFelement(id: 9, name: "Estática", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/LabM/estatica/P1.pdf"),
            PDFelement(id: 10, name: "Física", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Curso/MADO-07_F.pdf"),
            PDFelement(id: 11, name: "Física experimental", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Curso/MADO-09-FE.pdf"),
            PDFelement(id: 12, name: "Fundamentos de física", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Curso/MADO-08-FF.pdf"),
            PDFelement(id: 13, name: "Fundamentos de óptica", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/Curso/MADO-11_FO.pdf"),
            PDFelement(id: 14, name: "Fundamentos de termodinámica y electromagnetismo", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/Documentos/practicas.pdf"),
            PDFelement(id: 15, name: "Mecánica", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/CA/LabM/mecanica/P1.pdf"),
            PDFelement(id: 16, name: "Termodinámica", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/FQ/TEM/DocumentosT/practicas.pdf"),
            PDFelement(id: 17, name: "Bases de datos", size: 0, link: "http://odin.fi-b.unam.mx/salaD/practicasBD/manualBD.pdf"),
            
            
        ]),
        Resource(id: 4, imageIcon: "horario", resourceTitle: "Horario"),
        Resource(id: 5, imageIcon: "calendar", resourceTitle: "Calendario"),
        Resource(id: 6, imageIcon: "asesoria", resourceTitle: "Asesorías"),
        Resource(id: 7, imageIcon: "examenes", resourceTitle: "Exámenes pasados", resources: [
            PDFelement(id: 1, name: "Algebra. Primer final A 2018-2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/A/Examenes/1EF2018-2_A.pdf"),
            PDFelement(id: 2, name: "Algebra. Primer final B 2018-2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/A/Examenes/1EF2018-2_B.pdf"),
            PDFelement(id: 3, name: "Algebra. Primer final C 2018-2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/A/Examenes/1EF2018-2_C.pdf"),
            PDFelement(id: 4, name: "Algebra. Primer final D 2018-2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/A/Examenes/1EF2018-2_D.pdf"),
            PDFelement(id: 5, name: "Algebra. Segundo final 2018-2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/A/Examenes/2EF2018-2.pdf"),
            PDFelement(id: 6, name: "Algebra. Primer final A 2019-1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/A/Examenes/1EF2019-1_A.pdf"),
            PDFelement(id: 7, name: "Algebra. Primer final B 2019-1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/A/Examenes/1EF2019-1_B.pdf"),
            PDFelement(id: 8, name: "Algebra. Segundo final 2019-1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/A/Examenes/2EF2019-1.pdf"),
            PDFelement(id: 9, name: "Algebra lineal. Primer final A 2019-1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/AL/Examenes/2019_1_1A.pdf"),
            PDFelement(id: 10, name: "Algebra lineal. Primer final D 2019-1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/AL/Examenes/2019_1_1D.pdf"),
            PDFelement(id: 11, name: "Algebra lineal. Segundo final 2019-1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/AL/Examenes/2019_1_2U.pdf"),
            PDFelement(id: 12, name: "Algebra lineal. Extraordinario 2019-1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/AL/Examenes/2019_1_E2.pdf"),
            PDFelement(id: 13, name: "Algebra lineal. Primer final B 2019-2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/AL/Examenes/2019_2_1B.pdf"),
            PDFelement(id: 14, name: "Algebra lineal. Primer final C 2019-2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/AL/Examenes/2019_2_1C.pdf"),
            PDFelement(id: 15, name: "Algebra lineal. Segundo final 2019-2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/AL/Examenes/2019_2_2F.pdf"),
            PDFelement(id: 16, name: "Cálculo y Geometría Analítica. Primer final A 2019-2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/CyGA/Examenes/PFA_2019-2.pdf"),
            PDFelement(id: 17, name: "Cálculo y Geometría Analítica. Primer final C 2019-2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/CyGA/Examenes/PFC_2019-2.pdf"),
            PDFelement(id: 18, name: "Cálculo y Geometría Analítica. Segundo final A 2019-2", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/CyGA/Examenes/SFA_2019-2.pdf"),
            PDFelement(id: 19, name: "Cálculo y Geometría Analítica. Primer final A 2020-1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/CyGA/Examenes/20201_CyGA_1EF_A.pdf"),
            PDFelement(id: 20, name: "Cálculo y Geometría Analítica. Primer final A 2020-1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/CyGA/Examenes/20201_CyGA_1EF_C.pdf"),
            PDFelement(id: 21, name: "Cálculo y Geometría Analítica. Segundo final A 2020-1", size: 0, link: "http://dcb.ingenieria.unam.mx/wp-content/themes/tempera-child/CoordinacionesAcademicas/M/CyGA/Examenes/20201_CyGA_2EF.pdf")
            
        ])
    ]
}
