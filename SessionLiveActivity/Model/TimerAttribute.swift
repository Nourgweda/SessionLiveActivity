//
//  TimerAttribute.swift
//  SessionLiveActivity
//
//  Created by Nour Gweda on 05/12/2022.
//

import Foundation
import ActivityKit

struct TimerAttributes: ActivityAttributes {
    public typealias timerStatus = ContentState
    
    public struct ContentState: Codable, Hashable {
        var endTime: Date
    }
     var timerName: String
}
