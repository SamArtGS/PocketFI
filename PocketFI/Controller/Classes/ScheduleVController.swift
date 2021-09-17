//
//  ScheduleVController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/12/21.
//

import UIKit
import Elliotable

class ScheduleVController:  UIViewController {
    
    var eventsCalendar: [ElliottEvent] = [
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
    
    private let daySymbol = ["Lun", "Mar", "Mie", "Jue", "Vie","Sab"]
    
    init(title: String){
        super.init(nibName: nil, bundle: nil)
        self.title = title
        view.backgroundColor = .gray1
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let scheduler: Elliotable = {
        let scheduler = Elliotable()
        scheduler.translatesAutoresizingMaskIntoConstraints = false
        scheduler.roundCorner = .none
        scheduler.tintColor = .blackLetter
        scheduler.backgroundColor = .gray1
        scheduler.courseItemHeight = 70.0
        scheduler.borderWidth = 1
        scheduler.borderColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        scheduler.symbolFontColor = .blackLetter
        scheduler.symbolTimeFontColor = .blackLetter
        return scheduler
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.extendedLayoutIncludesOpaqueBars = true
        scheduler.delegate = self
        scheduler.dataSource = self
        
        scheduler.reloadData()
        setConstraints()
    }
    
    func setConstraints(){
        view.addSubview(scheduler)
        NSLayoutConstraint.activate([
            scheduler.topAnchor.constraint(equalTo: view.topAnchor),
            scheduler.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scheduler.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scheduler.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70)
        ])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.myOrientation = .all
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationItem.largeTitleDisplayMode = .automatic
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.myOrientation = .portrait
        UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
    }

}
extension ScheduleVController : ElliotableDelegate, ElliotableDataSource {
    
    func elliotable(elliotable: Elliotable, didSelectCourse selectedCourse: ElliottEvent) {
        mostrarAlerta(title: selectedCourse.courseName, message: "\(selectedCourse.startTime) - \(selectedCourse.endTime)")
    }
    
    func elliotable(elliotable: Elliotable, didLongSelectCourse longSelectedCourse: ElliottEvent) {

    }
    
    func elliotable(elliotable: Elliotable, at textPerIndex: Int) -> String {
        return self.daySymbol[textPerIndex]
    }
    
    func numberOfDays(in elliotable: Elliotable) -> Int {
        self.daySymbol.count
    }
    
    func courseItems(in elliotable: Elliotable) -> [ElliottEvent] {
        return eventsCalendar
    }
    
    

}
