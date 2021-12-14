//
//  ViewController.swift
//  FSCalendarApp
//
//  Created by naksuk on 2021/12/14.
//

import UIKit
import FSCalendar

class ViewController: UIViewController {
    
    
    @IBOutlet weak var calendar: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.allowsMultipleSelection = true
        calendar.appearance.todayColor = UIColor.red
        calendar.appearance.headerTitleColor = UIColor.orange
        calendar.appearance.weekdayTextColor = UIColor.orange
        calendar.appearance.selectionColor = UIColor.orange
        selectDate()

    }
    
    private func selectDate() {
        let now = Date()
        let year = Calendar.current.component(.year, from: now)
        let month = Calendar.current.component(.month, from: now)
        let day = Calendar.current.component(.day, from: now)
        
        for i in 0 ..< 5{
            let selectDay = Calendar.current.date(from: DateComponents(year: year, month: month, day: day - i))
                calendar.select(selectDay)
        }
    }
    
}

