//
//  SessionWidget.swift
//  SessionWidget
//
//  Created by Nour Gweda on 05/12/2022.
//

import WidgetKit
import SwiftUI

    struct SessionWidget: Widget {
        let kind: String = "SessionWidget"
        
        var body: some WidgetConfiguration {
            ActivityConfiguration(for: TimerAttributes.self) { context in
                SessionLiveActivityView(context: context)
                
            } dynamicIsland: { context in
                DynamicIsland {
                    DynamicIslandExpandedRegion(.leading) {
                    }
                    
                    DynamicIslandExpandedRegion(.trailing) {
                    }
                    
                    DynamicIslandExpandedRegion(.center) {
                        SessionLiveActivityView(context: context)
                    }
                    
                    DynamicIslandExpandedRegion(.bottom) {
                    }
                } compactLeading: {
                    // Create the compact leading presentation.
                    // ...
                } compactTrailing: {
                    // Create the compact trailing presentation.
                    // ...
                } minimal: {
                    // Create the minimal presentation.
                    // ...
                }
                .keylineTint(.yellow)
            }
        }
    }
