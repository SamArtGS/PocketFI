//
//  Data.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/12/21.
//

import UIKit
import Elliotable

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
        Resource(id: 6, imageIcon: "asesoria", resourceTitle: "Calendario"),
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

extension DataClasses{
    
    static let news:[Noticia] = [
        Noticia(id: 1, fecha: Date(),
                titulo: "Protocolos para un regreso seguro a clases organizado. Infórmate.",
                miniatura: "unam-covid",
                textos: ["""
                    #PRESENTACIÓN# \n\n\n Estos lineamientos tienen como objetivo establecer las medidas específicas sobre promoción y protección de la salud de la co- munidad universitaria que deberán ser implementadas en todas las entidades y dependencias en la reanudación de actividades laborales, *sociales, educativas, deportivas* y culturales de forma ordenada, paulatina y progresiva, procurando en todo momento la protección del Derecho Humano a la salud.
                    
                    
                    En consecuencia y con el fin de lograr un retorno a las actividades laborales seguro, responsable y confiable, se ha tomado en cuenta la estructura y particularidades de esta Casa de Estudios y los Lineamientos Técnicos Específicos para la Reapertura de las Actividades Económicas, publicados en el Diario Oficial de la Federación el 29 de mayo de 2020.
                    
                    
                    La Universidad Nacional Autónoma de México *regresa a labores de manera gradual*, y seguirá atenta al comportamiento de la pandemia observando todas las medidas de seguridad para los integrantes de su comunidad.
                    
                    
                    La aplicación de estos lineamientos *es de caracter obligatorio* y general para toda la Comunidad Universitaria. Se basan en los siguientes principios rectores:
                    

                    - *Privilegiar la salud y la vida.*
                    - *Solidaridad y no discriminacion.*
                    - *Responsabilidad compartida.*
                    
                    """,
                    """
                        #PRESENTACIÓN# \n Estos lineamientos tienen como objetivo establecer las medidas específicas sobre promoción y protección de la salud de la co- munidad universitaria que deberán ser implementadas en todas las entidades y dependencias en la reanudación de actividades laborales, *sociales, educativas, deportivas* y culturales de forma ordenada, paulatina y progresiva, procurando en todo momento la protección del Derecho Humano a la salud.
                        
                        En consecuencia y con el fin de lograr un retorno a las actividades laborales seguro, responsable y confiable, se ha tomado en cuenta la estructura y particularidades de esta Casa de Estudios y los Lineamientos Técnicos Específicos para la Reapertura de las Actividades Económicas, publicados en el Diario Oficial de la Federación el 29 de mayo de 2020.
                        
                        
                        La Universidad Nacional Autónoma de México *regresa a labores de manera gradual*, y seguirá atenta al comportamiento de la pandemia observando todas las medidas de seguridad para los integrantes de su comunidad.
                        """
                ],
                lottie: "covid",
                imagenes: [
                    "biblioteca-central",
                    "biblioteca-central"]
        ),
        Noticia(id: 2, fecha: Date(),
                titulo: "Mira las novedades en tu aplicación Pocket FI",
                miniatura: "biblioteca-central",
                textos: ["""
                    #PRESENTACIÓN# \n \n Estos lineamientos tienen como objetivo establecer las medidas específicas sobre promoción y protección de la salud de la co- munidad universitaria que deberán ser implementadas en todas las entidades y dependencias en la reanudación de actividades laborales, *sociales, educativas, deportivas* y culturales de forma ordenada, paulatina y progresiva, procurando en todo momento la protección del Derecho Humano a la salud.
                    
                    En consecuencia y con el fin de lograr un retorno a las actividades laborales seguro, responsable y confiable, se ha tomado en cuenta la estructura y particularidades de esta Casa de Estudios y los Lineamientos Técnicos Específicos para la Reapertura de las Actividades Económicas, publicados en el Diario Oficial de la Federación el 29 de mayo de 2020.
                    
                    
                    La Universidad Nacional Autónoma de México *regresa a labores de manera gradual*, y seguirá atenta al comportamiento de la pandemia observando todas las medidas de seguridad para los integrantes de su comunidad.
                    """,
                    """
                        #PRESENTACIÓN# \n Estos lineamientos tienen como objetivo establecer las medidas específicas sobre promoción y protección de la salud de la co- munidad universitaria que deberán ser implementadas en todas las entidades y dependencias en la reanudación de actividades laborales, *sociales, educativas, deportivas* y culturales de forma ordenada, paulatina y progresiva, procurando en todo momento la protección del Derecho Humano a la salud.
                        """
                ],
                lottie: "appAnimation",
                imagenes: [
                    "biblioteca-central",
                    "biblioteca-central",
                    "biblioteca-central"
                ]
        ),
        Noticia(id: 3, fecha: Date(),
                titulo: "Recomendaciones para la concentración en tus clases en línea",
                miniatura: "biblioteca-central",
                textos: ["""
                    #PRESENTACIÓN# \n Estos lineamientos tienen como objetivo establecer las medidas específicas sobre promoción y protección de la salud de la co- munidad universitaria que deberán ser implementadas en todas las entidades y dependencias en la reanudación de actividades laborales, *sociales, educativas, deportivas* y culturales de forma ordenada, paulatina y progresiva, procurando en todo momento la protección del Derecho Humano a la salud.
                    """,
                    """
                        #PRESENTACIÓN# \n Estos lineamientos tienen como objetivo establecer las medidas específicas sobre promoción y protección de la salud de la co- munidad universitaria que deberán ser implementadas en todas las entidades y dependencias en la reanudación de actividades laborales, *sociales, educativas, deportivas* y culturales de forma ordenada, paulatina y progresiva, procurando en todo momento la protección del Derecho Humano a la salud.
                        """
                ],
                lottie: "elearning",
                imagenes: [
                    "biblioteca-central",
                    "biblioteca-central",
                    "biblioteca-central"
                ]
        ),
        Noticia(id: 4, fecha: Date(),
                titulo: "Descubre nuevas fuentes de consulta de libros para tus estudios",
                miniatura: "screen1",
                textos: ["""
                    #PRESENTACIÓN# \n Estos lineamientos tienen como objetivo establecer las medidas específicas sobre promoción y protección de la salud de la co- munidad universitaria que deberán ser implementadas en todas las entidades y dependencias en la reanudación de actividades laborales, *sociales, educativas, deportivas* y culturales de forma ordenada, paulatina y progresiva, procurando en todo momento la protección del Derecho Humano a la salud.
                    """,
                    """
                        #PRESENTACIÓN# \n Estos lineamientos tienen como objetivo establecer las medidas específicas sobre promoción y protección de la salud de la co- munidad universitaria que deberán ser implementadas en todas las entidades y dependencias en la reanudación de actividades laborales, *sociales, educativas, deportivas* y culturales de forma ordenada, paulatina y progresiva, procurando en todo momento la protección del Derecho Humano a la salud.
                        """
                ],
                lottie: "newsThree",
                imagenes: [
                    "biblioteca-central",
                    "biblioteca-central",
                    "biblioteca-central"
                ]
        ),
        Noticia(id: 5, fecha: Date(),
                titulo: "Recomendaciones para saber elegir tu forma de titulación",
                miniatura: "screen1",
                textos: ["""
                    #PRESENTACIÓN# \n Estos lineamientos tienen como objetivo establecer las medidas específicas sobre promoción y protección de la salud de la co- munidad universitaria que deberán ser implementadas en todas las entidades y dependencias en la reanudación de actividades laborales, *sociales, educativas, deportivas* y culturales de forma ordenada, paulatina y progresiva, procurando en todo momento la protección del Derecho Humano a la salud.
                    """,
                    """
                        #PRESENTACIÓN# \n Estos lineamientos tienen como objetivo establecer las medidas específicas sobre promoción y protección de la salud de la co- munidad universitaria que deberán ser implementadas en todas las entidades y dependencias en la reanudación de actividades laborales, *sociales, educativas, deportivas* y culturales de forma ordenada, paulatina y progresiva, procurando en todo momento la protección del Derecho Humano a la salud.
                        """
                ],
                lottie: "newsOne",
                imagenes: [
                    "biblioteca-central",
                    "biblioteca-central",
                    "biblioteca-central"
                ]
        )
    ]
    
    
    static var eventsCalendar: [ElliottEvent] = [
        ElliottEvent(courseId: "2948",
                     courseName: "Computación Gráfica Avanzada",
                     roomName: "Y009",
                     professor: "Reynaldo Ávila",
                     courseDay: .tuesday,
                     startTime: "7:00",
                     endTime: "9:00",
                     backgroundColor: .systemRed),
        
        ElliottEvent(courseId: "2948",
                     courseName: "Computación Gráfica Avanzada",
                     roomName: "Y009",
                     professor: "Reynaldo Ávila",
                     courseDay: .thursday,
                     startTime: "7:00",
                     endTime: "9:00",
                     backgroundColor: .systemRed),
        
        ElliottEvent(courseId: "1959",
                     courseName: "Sistemas Distribuidos",
                     roomName: "A112",
                     professor: "Guadalupe Lizeth",
                     courseDay: .tuesday,
                     startTime: "9:00",
                     endTime: "11:00",
                     backgroundColor: .systemBlue),
        
        ElliottEvent(courseId: "1959",
                     courseName: "Sistemas Distribuidos",
                     roomName: "A112",
                     professor: "Guadalupe Lizeth",
                     courseDay: .thursday,
                     startTime: "9:00",
                     endTime: "11:00",
                     backgroundColor: .systemBlue),
        
        ElliottEvent(courseId: "2930",
                     courseName: "Criptografía",
                     roomName: "B112",
                     professor: "Rocío Aldeco",
                     courseDay: .tuesday,
                     startTime: "13:00",
                     endTime: "15:00",
                     backgroundColor: .systemPurple),
        
        ElliottEvent(courseId: "2930",
                     courseName: "Criptografía",
                     roomName: "B112",
                     professor: "Rocío Aldeco",
                     courseDay: .thursday,
                     startTime: "13:00",
                     endTime: "15:00",
                     backgroundColor: .systemPurple),
        
        ElliottEvent(courseId: "2933",
                     courseName: "Minería de Datos",
                     roomName: "Y112",
                     professor: "Guillermo Molero",
                     courseDay: .tuesday,
                     startTime: "16:00",
                     endTime: "18:00",
                     backgroundColor: .systemGreen),
        
        ElliottEvent(courseId: "2933",
                     courseName: "Minería de Datos",
                     roomName: "Y112",
                     professor: "Guillermo Molero",
                     courseDay: .thursday,
                     startTime: "16:00",
                     endTime: "18:00",
                     backgroundColor: .systemGreen),
        
        ElliottEvent(courseId: "1858",
                     courseName: "Sistemas Embebidos",
                     roomName: "Y112",
                     professor: "Ayesha Román",
                     courseDay: .tuesday,
                     startTime: "19:00",
                     endTime: "21:00",
                     backgroundColor: .systemOrange),
        
        ElliottEvent(courseId: "1858",
                     courseName: "Sistemas Embebidos",
                     roomName: "Y112",
                     professor: "Ayesha Román",
                     courseDay: .thursday,
                     startTime: "19:00",
                     endTime: "21:00",
                     backgroundColor: .systemOrange),
        
        ElliottEvent(courseId: "6858",
                     courseName: "Lab. Sistemas Embebidos",
                     roomName: "Y112",
                     professor: "Pedro Rincón",
                     courseDay: .friday,
                     startTime: "18:00",
                     endTime: "20:00",
                     backgroundColor: .systemOrange),
        
        ElliottEvent(courseId: "1867",
                     courseName: "O y Arq. de Computadoras",
                     roomName: "Y112",
                     professor: "Pedro Rincón",
                     courseDay: .monday,
                     startTime: "19:00",
                     endTime: "21:00",
                     backgroundColor: .magenta),
        
        ElliottEvent(courseId: "1867",
                     courseName: "O y Arq. de Computadoras",
                     roomName: "Y112",
                     professor: "Pedro Rincón",
                     courseDay: .wednesday,
                     startTime: "19:00",
                     endTime: "21:00",
                     backgroundColor: .magenta),
        
        ElliottEvent(courseId: "1867",
                     courseName: "Lab. O y Arq. de Computadoras",
                     roomName: "Y112",
                     professor: "Pedro Rincón",
                     courseDay: .wednesday,
                     startTime: "17:00",
                     endTime: "19:00",
                     backgroundColor: .oroUnam),
        
        ElliottEvent(courseId: "2954",
                     courseName: "Seguridad Inf. Avanzada",
                     roomName: "Y112",
                     professor: "César Pineda",
                     courseDay: .friday,
                     startTime: "7:00",
                     endTime: "10:00",
                     backgroundColor: .systemTeal),
        
        ElliottEvent(courseId: "2954",
                     courseName: "Lab. Seguridad Inf. Avanzada",
                     roomName: "Y112",
                     professor: "César Pineda",
                     courseDay: .saturday,
                     startTime: "7:00",
                     endTime: "9:00",
                     backgroundColor: .blue)
    ]

}
