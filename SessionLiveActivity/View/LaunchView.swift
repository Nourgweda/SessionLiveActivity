//
//  LaunchView.swift
//  SessionLiveActivity
//
//  Created by Nour Gweda on 05/12/2022.
//

import SwiftUI

struct LaunchView: View {
    
    let viewModel = SessionViewModel()
    @State var timer: Timer? = nil
    
    var body: some View {
        
        VStack(spacing: 15){
            Button("Start Activity") {
                viewModel.changeTimer(time: 10.0, isUpdated: false)
            }
            
            Button("Stop Activity") {
                viewModel.stopLiveActivity()
            }
            
            Button("Update Activity") {
                viewModel.changeTimer(time: 20.0, isUpdated: true)
            }
        }
    }
}

