//
//  SessionViewModel.swift
//  SessionLiveActivity
//
//  Created by Nour Gweda on 05/12/2022.
//

import Foundation
import ActivityKit


class SessionViewModel {
    
    var activity: Activity<TimerAttributes>? = nil
    var timer: Timer? = nil
    
    func startLiveActivity() {
        let attributes = TimerAttributes(timerName: "Trial Session Timer")
        let state = TimerAttributes.ContentState(endTime: Date().addingTimeInterval(10.0))
        Task{
            activity = try? Activity<TimerAttributes>.request(attributes: attributes, contentState: state, pushType: nil)
        }
    }
    
    func stopLiveActivity() {
        let state = TimerAttributes.timerStatus(endTime: .now)
        Task {
            await activity?.end(using: state, dismissalPolicy: .immediate)
        }
    }
    
    func updateTimer() {
        let state = TimerAttributes.timerStatus(endTime: Date().addingTimeInterval(20.0))
        Task {
            await activity?.update(using: state)
        }
    }
    
    func changeTimer(time: Double, isUpdated: Bool) {
        if isUpdated {
            timer?.invalidate()
        }
        isUpdated ? self.updateTimer() : self.startLiveActivity()
        timer = Timer.scheduledTimer(withTimeInterval: time, repeats: false) { _ in
            self.stopLiveActivity()
        }
    }
}



