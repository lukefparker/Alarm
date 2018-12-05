//
//  Alarm.swift
//  Alarm
//
//  Created by luke parker on 12/3/18.
//  Copyright © 2018 luke parker. All rights reserved.
//

import Foundation

class Alarm: Equatable {
    var fireDate: Date
    var name: String
    var enabled: Bool
    var uuid: String
    var fireTimeAsString: String
    
    init(fireDate: Date, name:  String, enabled: Bool) {
    
    self.fireDate = fireDate
    self.name = name
    self.enabled = enabled
    self.uuid = UUID().uuidString
        self.fireTimeAsString = ""
}
    
    static func == (lhs: Alarm, rhs: Alarm) -> Bool {
        if lhs.uuid == rhs.uuid{return true}
        return false
    }
}
