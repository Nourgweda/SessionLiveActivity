//
//  SessionLiveActivityView.swift
//  SessionLiveActivity
//
//  Created by Nour Gweda on 05/12/2022.
//

import SwiftUI
import WidgetKit

struct SessionLiveActivityView: View {
    
    let context: ActivityViewContext<TimerAttributes>
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color.blue.gradient)
            
            HStack(spacing: 10) {
                Image("Techne")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .frame(alignment: .trailing)
                    .background(Color.white)
                    .cornerRadius(20)
                
                VStack(spacing: 10) {
                    Text("The renaissance of consumer Captivation: The phygital experience")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .lineLimit(1)
                    
                    HStack(spacing: 10) {
                        Image(systemName: "mappin.and.ellipse")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.white)
                        
                        Text("Stage 02 - Small Theater")
                            .font(.system(size: 12))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }.frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack(spacing: 10) {
                        Image(systemName: "stopwatch")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.white)
                        
                        Text(context.state.endTime, style: .timer)
                            .font(.system(size: 12))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }.frame(maxWidth: .infinity, alignment: .leading)
                }
            }.padding(.vertical)
                .padding(.horizontal)
        }
    }
}

