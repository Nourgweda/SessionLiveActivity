//
//  SessionWidgetBundle.swift
//  SessionWidget
//
//  Created by Nour Gweda on 05/12/2022.
//

import WidgetKit
import SwiftUI

@main
struct SessionWidgetBundle: WidgetBundle {
    var body: some Widget {
        SessionWidget()
        SessionWidgetLiveActivity()
    }
}
