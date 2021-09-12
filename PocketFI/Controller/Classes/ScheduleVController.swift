//
//  ScheduleVController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/12/21.
//

import UIKit
import Elliotable

class ScheduleVController:  UIViewController {
    
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
        scheduler.isUserInteractionEnabled = true
        scheduler.backgroundColor = .gray1
        return scheduler
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        scheduler.delegate = self
        scheduler.dataSource = self
        setConstraints()
    }
    
    func setConstraints(){
        view.addSubview(scheduler)
        NSLayoutConstraint.activate([
            scheduler.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scheduler.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor),
            scheduler.heightAnchor.constraint(equalTo: view.heightAnchor),
        ])
    }

}
extension ScheduleVController : ElliotableDelegate, ElliotableDataSource {
    
    func elliotable(elliotable: Elliotable, didSelectCourse selectedCourse: ElliottEvent) {
        print("Nada")
    }
    
    func elliotable(elliotable: Elliotable, didLongSelectCourse longSelectedCourse: ElliottEvent) {
        print("Nada")
    }
    
    func elliotable(elliotable: Elliotable, at textPerIndex: Int) -> String {
        return self.daySymbol[textPerIndex]
    }
    
    func numberOfDays(in elliotable: Elliotable) -> Int {
        self.daySymbol.count
    }
    
    func courseItems(in elliotable: Elliotable) -> [ElliottEvent] {
        let course_1 = ElliottEvent(courseId: "c0001", courseName: "Operating System", roomName: "IT Building 21204", professor: "TEST", courseDay: .tuesday, startTime: "12:00", endTime: "13:15", backgroundColor: .azulUnam!)

        let course_2 = ElliottEvent(courseId: "c0002", courseName: "Operating System", roomName: "IT Building 21204", professor: "TEST", courseDay: .friday, startTime: "12:00", endTime: "13:15", textColor: UIColor.white, backgroundColor: .magenta)
        
        return [course_1,course_2]
    }
    
    

}
