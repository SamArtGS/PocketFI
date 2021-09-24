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
    
    static let news:[Noticia] = [[
        Noticia(id: 1, fecha: Date(),
                titulo: "Protocolos para un regreso seguro a clases organizado. Infórmate.",
                miniatura: "unam-covid",
                textos: ["""
                    #PRESENTACIÓN# \n\n\n Estos lineamientos tienen como objetivo establecer las medidas específicas sobre promoción y protección de la salud de la co- munidad universitaria que deberán ser implementadas en todas las entidades y dependencias en la reanudación de actividades laborales, *sociales, educativas, deportivas* y culturales de forma ordenada, paulatina y progresiva, procurando en todo momento la protección del Derecho Humano a la salud.
                    
                    
                    En consecuencia y con el fin de lograr un retorno a las actividades laborales seguro, responsable y confiable, se ha tomado en cuenta la estructura y particularidades de esta Casa de Estudios y los Lineamientos Técnicos Específicos para la Reapertura de las Actividades Económicas, publicados en el Diario Oficial de la Federación el 29 de mayo de 2020.
                    
                    
                    La Universidad Nacional Autónoma de México *regresa a labores de manera gradual*, y seguirá atenta al comportamiento de la pandemia observando todas las medidas de seguridad para los integrantes de su comunidad.
                    
                    
                    La aplicación de estos lineamientos *es de caracter obligatorio* y general para toda la Comunidad Universitaria. Se basan en los siguientes principios rectores:
                    

                    - *Privilegiar la salud y la vida.*
                    - *Solidaridad y no discriminacion.*
                    - *Responsabilidad compartida.*
                    
                    """,
                    """
                        #PRESENTACIÓN# \n Estos lineamientos tienen como objetivo establecer las medidas específicas sobre promoción y protección de la salud de la co- munidad universitaria que deberán ser implementadas en todas las entidades y dependencias en la reanudación de actividades laborales, *sociales, educativas, deportivas* y culturales de forma ordenada, paulatina y progresiva, procurando en todo momento la protección del Derecho Humano a la salud.
                        
                        En consecuencia y con el fin de lograr un retorno a las actividades laborales seguro, responsable y confiable, se ha tomado en cuenta la estructura y particularidades de esta Casa de Estudios y los Lineamientos Técnicos Específicos para la Reapertura de las Actividades Económicas, publicados en el Diario Oficial de la Federación el 29 de mayo de 2020.
                        
                        
                        La Universidad Nacional Autónoma de México *regresa a labores de manera gradual*, y seguirá atenta al comportamiento de la pandemia observando todas las medidas de seguridad para los integrantes de su comunidad.
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
                    *21 de septiembre de 2021*
                    El Pokémon singular Zarude aparece por primera vez en Pokémon GO para celebrar el lanzamiento mundial de la película Pokémon Los secretos de la selva.
                    *16 de septiembre de 2021*
                    ¡El video del 5.º aniversario de Pokémon GO ya está aquí!
                    *13 de septiembre de 2021*
                    ¡Furfrou y otros Pokémon disfrazados llegan a Pokémon GO para la Semana de la Moda!
                    *9 de septiembre de 2021*
                    Día de la Comunidad de octubre: ¡Presentando a Duskull, el Pokémon Requiem!
                    *2 de septiembre de 2021*
                    Ya están disponibles las nuevas fechas y detalles de los eventos reprogramados de la Zona Safari de Pokémon GO
                    *1 de septiembre de 2021*
                    Inkay y Malamar hacen su debut en Pokémon GO durante el Psicoespectáculo
                    *1 de septiembre de 2021*
                    Lo que escuchamos: una actualización de nuestro grupo de trabajo
                    *27 de agosto de 2021*
                    Próximamente en septiembre: ¡prepárate para la Temporada de Travesuras y mucho más!
                    *27 de agosto de 2021*
                    ¡Bienvenidos a la Temporada de Travesuras!
                    *26 de agosto de 2021*
                    Liga Combates GO: Novedades sobre la Temporada 9
                    *20 de agosto de 2021*
                    Día de la Comunidad de septiembre: ¡el Pokémon Nutria, Oshawott (Osha-watch out), será el destacado!
                    *16 de agosto de 2021*
                    ¡Celebra aventuras a la luz de las estrellas con la versión cantada del tema nocturno de Pokémon GO!
                    *4 de agosto de 2021*
                    Ahora los Entrenadores pueden añadir amistades directamente de la lista de contactos de su dispositivo.
                    *3 de agosto de 2021*
                    ¡El Ultradesbloqueo Parte 3 se centrará en la región de Galar!
                    *26 de julio de 2021*
                    Próximamente en agosto: ¡Ultradesbloqueo y más!
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
                    Como habrás notado, muchos institutos en Lima han cambiado sus clases regulares por una modalidad virtual. El éxito durante el estudio a distancia se encuentra ligado a tu capacidad de concentrarte. Tal vez, al igual que muchas otras personas, sueles tener problemas de concentración al estudiar desde casa.

                    Sí, es cierto que desde allí existen muchas fuentes de distracción. ¿Qué se puede hacer al respecto? Bien, en el siguiente artículo te mostraremos cómo mejorar la concentración durante tus clases a distancia. ¿Estás listo para empezar?
                    
                    *1.- Elige un ambiente de estudio*

                    La habitación en la cual elijas empezar tu clase tendrá un impacto inmenso sobre tu capacidad de concentración en clase. Por eso, el primer paso es seleccionar un ambiente que no contenga muchas fuentes de distracción. Ahora bien, a fin de encontrar ese lugar ideal, debes hacerte las siguientes preguntas:

                    Privacidad: ¿Se trata de un espacio que solo usarás tú o lo compartirás con más personas? ¿Habrá gente entrando y saliendo constantemente de esa habitación?
                    Comodidad: ¿El ambiente (Iluminación, temperatura, etc.) es lo suficientemente cómodo como para trabajar? Si es demasiado cómodo, podría hacer que te quedes dormido. Busca un punto intermedio.
                    Ruido: ¿El lugar tiene altos niveles de ruido internos o externos? ¿Te es posible reducir el nivel de tales sonidos?
                    
                    *2.- Distracciones e interrupciones*

                    Encontrarás diferentes fuentes de distracción, pero aquí las clasificaremos en dos clases principales, las distracciones externas y las internas.

                    Para empezar, las distracciones externas pueden incluir inconvenientes como la presencia de otras personas, conversaciones, TV, música, mensajes o llamadas al teléfono, notificaciones de aplicaciones y cualquier cosa que tenga el potencial de desviar tu atención de tu tarea actual.
                    
                    Por otra parte, las distracciones internas ya no se encuentran relacionadas a la habitación o los elementos que te rodean. En lugar de eso, se enfocan en las sensaciones que podrías tener al estudiar desde casa.
                    
                    Algunos ejemplos claros de esto son el hambre, el cansancio, posible malestar, estrés, preocupaciones, cosas que preferirías estar haciendo y otros pensamientos que reclaman tu atención de forma prioritaria.

                    Por lo general, nosotros estamos conscientes de las fuentes de distracción externas, pero las internas tienden a desviar nuestra atención sin que nos demos cuenta. A pesar de que muchas veces tengamos ganas de desactivar todos esos estímulos que nos distraen, aquello es muy difícil.

                    Ten en mente que la distracción no solo implica una pérdida de tiempo. Adicionalmente, aquello también consume energía valiosa que podríamos utilizar para atender al profesor, memorizar conceptos e interiorizar el contenido de la clase.

                    Te puede interesar: Conoce los beneficios de las clases virtuales

                    Medidas que puedes tomar

                    Entonces, ¿qué hacer para minimizar esta pérdida de energía y aprovechar al máximo el contenido de tu aula virtual? Bien, lo más recomendable es que te tomes el trabajo de identificar cada una de esas posibles distracciones (internas y externas) a fin de minimizarlas con anticipación para que no interfieran.

                    Primero veamos algunos tips para mejorar la concentración en relación a los estímulos externos. Estos son los más sencillos de corregir. Puedes empezar por seleccionar un buen ambiente para estudiar, cosa que ya vimos en el segmento anterior.

                    Luego, asegúrate de desactivar las alertas y notificaciones de aplicaciones en el celular. Si lo deseas puedes activar la opción de modo avión. Complementariamente, avisa a tus amigos que no estarás en clase y no tendrás oportunidad de contestar llamadas o mensajes.

                    Ahora, para las distracciones internas, otro de los tips para la concentración en el estudio es tener una libreta para tomar notas. Ella no solo te ayudará a apuntar la información de la clase, sino que también sirve para minimizar distracciones.

                    Usualmente, en medio de cualquier tarea importante suelen aparecer pensamientos espontáneos relacionados a otras actividades. Poco a poco, ellos empiezan a reclamar nuestra atención y se mantienen como una luz parpadeante en nuestro cerebro para evitar que los olvidemos.

                    Por lo tanto, si apuntas en tu libreta todos esos pensamientos sobre actividades pendientes, la preocupación y el estrés de estas serán menores porque tendrás una forma de recordarlas una vez termine la clase.

                    *3.- El mito del multitask en el aprendizaje*
                    
                    Muchas personas creen que se puede estudiar y realizar otras actividades a la par. De hecho, el término multitask o multitarea se ha hecho muy popular en los últimos años, Si bien aquel concepto podría ser muy efectivo en otros contextos, resulta nocivo para el aprendizaje durante una clase.

                    Muchos sostienen que el multitasking es solo un mito. Las investigaciones demuestran que llevar a cabo múltiples tareas a la vez no es posible. En lugar de eso, solo se consigue saltar de una actividad a la otra y el desempeño se ve deteriorado. De hecho, quienes se enfocan en múltiples tareas mientras estudian tienen menos probabilidades de recordar la información luego.

                    Ahora tienes algunas medidas que te ayudarán en tus clases virtuales. Si aplicas estos consejos para mejorar la concentración sin duda notarás resultados positivos en tu desempeño académico.
                    
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
                    Descubre las fuentes de información que la Biblioteca pone a tu alcance: bases de datos, libros y revistas digitales, estudios de caso, vídeos, imágenes, atlas humanos y portales digitales.
                    *Digitalia Catalan*
                    A database of ebooks in Catalan. It has works in Catalan in a range of disciplines. The UOC Library offers access to certain works. Only online visualization available (no downloads permitted).
                    *ScienceDirect*
                    Colección de Elsevier que incluye libros electrónicos y revistas multidisciplinarias en lengua inglesa, que abarcan ámbitos muy amplios, como la ingeniería, las ciencias de la vida, la salud, las ciencias sociales y las humanidades. Las revistas son dirigidas por eminentes consejos editoriales y todos los artículos pasan por un proceso de evaluación de expertos. A modo de ejemplo, la plataforma incluye la revista The Lancet desde el primer número publicado.
                    *Scopus*
                    Base de datos producida por Elsevier que recoge unas 18.000 publicaciones de editoriales internacionales. Es una nueva herramienta de navegación que engloba la mayor colección multidisciplinaria a nivel mundial de resúmenes, referencias e índices de literatura científica, técnica y médica. Scopus permite conocer el número a veces que un artículo ha sido citado, buscar recursos web y patentes.
                    *Web of Science*
                    Base de datos bibliográfica y bibliométrica conocida anteriormente como ISI Web of Knowledge. Contiene referencias y resúmenes de autor de artículos de revistas, ponencias de congresos e índices de citas. Permite el acceso a ediciones como Arts & Humanities (AH).
                    *Academic Video Online*
                    Plataforma de vídeo en streaming con más de 63.000 vídeos entre documentales, películas y entrevistas de fuentes como la BBC, National Geographic o el British Film Institute. Podrás utilizarla para profundizar en tu aprendizaje y también para el entretenimiento. Encontrarás, por ejemplo, las obras de la Royal Shakespeare Company, los programas de 60 Minutes o conciertos y vídeos de recetas. Puedes consultar las transcripciones en diferentes idiomas, crear clips y listas personalizados, guardar los favoritos y visualizar los contenidos en línea o desde el móvil.
                    *O'Reilly*
                    40.000 libros digitales del ámbito de la ingeniería informática, las telecomunicaciones, la multimedia y otras materias afines. Encontrarás el rinoceronte de JavaScript o el leopardo de MAC OS, característicos del grupo O'Reilly. También contiene otros formatos, como artículos, estudios de caso, tutoriales y cursos audiovisuales. Los contenidos pertenecen a las editoriales más importantes del sector y abarcan temas sobre lenguajes de programación como Phyton, experiencia de usuario, visualización de datos o tutoriales sobre uso de software.
                    *eLibro*
                    Libros electrónicos que abarcan todas las categorías temáticas de la UOC y que provienen de universidades y centros académicos españoles y latinoamericanos. Te ofrecen varias opciones de lectura: leer en línea o bien sin conexión. También dispones de varias opciones de búsqueda: desde la más simple, para encontrar contenidos por palabra clave, hasta la más avanzada, que permite filtrar los resultados por idioma, fecha o tipo de documento.
                    *e-Premium Graó*
                    Un paquete de revistas de la Editorial Graó, especializada en pedagogía y aprendizaje. Entre ellas se encuentran las cabeceras Aula de Secundaria o Aula de Infantil y otras más específicas de ámbitos concretos como la didáctica de la música o la lengua y la literatura. Encontrarás artículos con reflexiones, buenas prácticas, investigación, formación y experiencias en diferentes etapas educativas, con un acento en la educación infantil, primaria y secundaria. Descarga los contenidos en PDF o léelos en línea.
                    *MarketLine Advantage*
                    Colección especializada en economía y empresa, perfecta para desarrollar un plan de negocios o de emprendimiento. Incluye cientos de casos de estudio con ejemplos reales y actuales para aprender de los éxitos y los fracasos de las empresas. También encontrarás informes corporativos con información financiera, análisis DAFO o acuerdos comerciales. Incorpora una herramienta para localizar influenciadores en las redes sociales y otra de índice de referencia (benchmark) para cotejar los datos de las compañías más importantes.
                    *Statista*
                    ¿Cuál es la red social más utilizada? ¿Cuál es el sector líder en comercio electrónico? Responde rápidamente preguntas de este tipo con datos estadísticos fiables. Se muestran en presentaciones muy versátiles y son exportables en los formatos más utilizados. Hay dosieres temáticos, estudios sobre los mercados digitales, clasificaciones globales de empresas, así como infografías sobre temas de actualidad. Puede ayudarte, por ejemplo, en tu plan de empresa o de comunicación y a encontrar fuentes de calidad para tus trabajos académicos.
                    *La Maleta de Portbou*
                    Acceso a la versión digital de esta revista sobre humanidades y economía en la que pensadores internacionales de diferentes disciplinas estimulan la reflexión con sus artículos. Es una publicación bimestral, coordinada por el filósofo y periodista Josep Ramoneda. El propósito de publicación es contribuir al debate sobre el mundo actual y su sentido, afrontar las fracturas tecnológicas, culturales, sociales y geopolíticas y fomentar una mirada cosmopolita.
                    *JoVE*
                    Esta revista en formato vídeo cubre métodos de investigación y técnicas experimentales de diversos ámbitos, entre los que está la psicología. Más de mil universidades, hospitales y empresas biotecnológicas del mundo la utilizan para aumentar su productividad y obtener los mejores resultados, pues permite ver los intrincados detalles de experimentos de vanguardia en lugar de leerlos en artículos de texto.
                    *JSTOR*
                    Herramienta perfecta para efectuar búsquedas retrospectivas y analizar la evolución de un tema a lo largo del tiempo. Contiene cientos de artículos digitalizados desde 1800 hasta hace tres años. Los contenidos, mayoritariamente en inglés, son sobre ciencias sociales, y artes y humanidades, con una amplia cobertura de temas y alcance internacional. También incluye algunos libros y contenidos en abierto al alcance de todo el mundo. Lee los contenidos en línea o descárgatelos en formato PDF o TIFF.
                    *Primal Pictures*
                    Plataforma digital para aprender los conceptos centrales de la anatomía y la fisiología del cuerpo humano de una forma atractiva y precisa con imágenes en 360°. La plataforma incluye un apartado especializado en trastornos del lenguaje y un visor interactivo que reconstruye la anatomía humana. El nivel de detalle y las posibilidades visuales que ofrece lo convierten en un recurso muy interesante.
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
                    *Tesis o Tesina*
                    Desarrollo de una tesis individual o grupal(máximo 5 integrantes). Se debe contar con algún académico perteneciente a la UNAM.
                    *Actividad de investigación*
                    El alumno deberá integrarse a algún proyecto de investigación por lo menos seis meses. Como resultado de la participación en el proyecto, el alumno deberá entregar un trabajo escrito que puede ser una tesis, una tesina o un artículo académico aceptado en alguna revista arbitrada.
                    *Seminario de Tesis o Tesina*
                    El alumno deberá inscribir una asignatura denominada Seminario de Titulación. Durante ese semestre, los alumnos deben desarrollar un tema. Esta materia será evaluada mediante un trabajo final, el cual deberá ser aprobado por el titular del seminario.
                    *Examen General de Conocimiento*
                    Se deberá presentar un examen escrito que evalúe el nivel general de conocimientos del estudiante así como su capacidad de aplicarlos en los temas de la carrera que cursó. Este examen puede ser interno o externo. En el caso externo puede ser con reconocimiento nacional o internacional.

                    Para más información sobre esta opción, deberás acudir directamente con tu Coordinador(a) de Carrera.
                    *Alto Nivel Académico*
                    Para cumplir con los requisitos de esta modalidad de titulación el alumno deberá haber cubierto la totalidad de los créditos de su plan de estudios en el periodo establecido en el mismo, así como no haber reprobado alguna materia y tener al menos 9.5 de promedio.
                    *Trabajo Profesional*
                    Se deberá comprobar que ha trabajado cuando menos seis meses en alguna actividad relacionada con la carrera. Asimismo deberá elaborar un informe escrito que demuestre su dominio de capacidades y competencias profesionales. El informe requiere ser avalado por un responsable académico que puede ser un profesor de la Facultad.
                    *Estudios de Posgrado*
                    El alumno deberá ingresar a una especialización, a una maestría o a un doctorado en la UNAM. El Comité de Titulación de la DIE determinará la pertinencia del posgrado seleccionado. El alumno deberá cursar el primer semestre con una carga de tiempo completo y acreditar todas las materias con un promedio mínimo de 8.
                    *Ampliación y Profundización de Conocimientos*
                    Existen dos alternativas para esta modalidad:
                     Alternativa 1:
                    Para optar por esta alternativa se requiere tener un promedio mínimo de 8.5 y tener el 100% de los créditos de la carrera. El alumno deberá cursar un semestre adicional de la misma licenciatura o de otra afín impartida por la UNAM. Las asignaturas adicionales deberán ser aprobadas por el Comité de Titulación de la DIE y la suma de los créditos de dichas asignaturas deberán ser cuando menos el 10% de los créditos totales de la carrera. El alumno deberá aprobar todas las asignaturas adicionales con un promedio mínimo de 9 durante un semestre lectivo. De no cumplir con estos requisitos, el alumno no podrá optar nuevamente por esta modalidad de titulación.


                     Alternativa 2:
                    Para esta opción no se solicita el requisito de promedio mínimo y se puede registrar la opción cuando el alumno tenga cuando menos el 50% de créditos de la carrera. El alumno deberá acreditar cursos y diplomados impartidos por la UNAM que sean afines a su carrera con una duración conjunta de cuando menos 240 horas. Los cursos y diplomados deberán ser aprobados por el Comité de Titulación de la DIE.
                    *Servicio Social*
                    Está dirigida a alumnos que hayan realizado el servicio social en un tema relacionado con su carrera y que tenga como objetivo extender los beneficios de la ciencia y la técnica a la sociedad, así como consolidar la formación académica y la capacitación profesional del prestador.
                    *Apoyo a la Docencia*
                    Consistirá en la elaboración de material didáctico para apoyo específico a una o varias asignaturas o actividades académicas de los planes de estudio de las licenciaturas que se imparten en la Facultad de Ingeniería. Para optar por esta opción, se entenderá como Material Didáctico: libro de texto, material de prácticas, cuadernos, apuntes, software, bases de datos, programas de cómputo, videos, materiales multimedia, prototipos, modelos, u otros productos que apoyen las actividades de aprendizaje de alguna de las asignaturas de los planes de estudio que se imparten en la Facultad de Ingeniería; desarrollado bajo la dirección de un académico adscrito a la UNAM, quien fungirá como tutor del alumno.


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
