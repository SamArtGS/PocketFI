//
//  Calendar.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/12/21.
//

import UIKit
import JTAppleCalendar

class CalendarViewController: UIViewController{
    
    private var calendarView: JTACMonthView = {
        let calendarView = JTACMonthView()
        return calendarView
    }()
    
}
