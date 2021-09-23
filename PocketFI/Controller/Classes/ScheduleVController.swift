//
//  ScheduleVController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/12/21.
//

import UIKit
import Elliotable

class ScheduleVController:  UIViewController {
    
    private let eventsCalendar = DataClasses.eventsCalendar
    
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
