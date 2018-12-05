//
//  AlarmController.swift
//  Alarm
//
//  Created by luke parker on 12/3/18.
//  Copyright © 2018 luke parker. All rights reserved.
//

import Foundation

class AlarmController {
    var alarms: [Alarm] = []
    
    func toggleEnabled(for alarm: Alarm) {
        alarm.enabled.toggle()    }
    
    init(){
        self.alarms = self.mockAlarms
    }
    var mockAlarms: [Alarm] {
        let alarm1 = Alarm(fireDate: Date(timeIntervalSinceNow: 12000), name: "Wake up!", enabled: true)
        let alarm2 = Alarm(fireDate: Date(timeIntervalSinceNow: 5000), name: "Bed time!", enabled: true)
        return[alarm1, alarm2]
    }

    
    //shared instance
    static let shared = AlarmController()
    
    func addAlarm(fireDate: Date, name: String, enabled: Bool) {
        
        let newAlarm = Alarm(fireDate: fireDate, name: name, enabled: enabled)
        alarms.append(newAlarm)
        
    }
    
    //Update
    func update(alarm: Alarm, fireDate: Date, name: String, enabled: Bool) {
        alarm.fireDate = fireDate
        alarm.name = name
        alarm.enabled = enabled
    }
    
    //Delete
    func delete(alarm: Alarm) {
        if let deleteAlarm = alarms.index(of: alarm) {
            alarms.remove(at: deleteAlarm)
            
        }
    
    }
}
