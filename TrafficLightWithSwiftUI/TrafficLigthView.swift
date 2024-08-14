//
//  TrafficLigthView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Denis Bokov on 13.08.2024.
//

import SwiftUI

struct TrafficLigthView: View {
    
    @State private var currentLight = CurrentLigtht.red
    @State private var redLigth: Double = 0.2
    @State private var yellowLigth: Double = 0.2
    @State private var greenLigth: Double = 0.2
    @State private var titleButton = "START"
    
    var body: some View {
        VStack {
            RedColorTrafficLigthView(opacity: redLigth)
                .padding(.bottom, 5)
            YellowColorTrafficLigthView(opacity: yellowLigth)
                .padding(.bottom, 5)
            GreenColorTrafficLigthView(opacity: greenLigth)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
        }
        .padding()
        Spacer()
        Button(action: startButtonPressed, label: {
            HStack{
                Text(titleButton)
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
            .font(.system(.title, design: .rounded, weight: .bold))
            .foregroundColor(.blue)
            .background(RoundedRectangle(cornerRadius: 10).stroke(.blue, lineWidth: 4))
            .padding(EdgeInsets(top: 0, leading: 50, bottom: 50, trailing: 50))
        })
    }
    
    private func startButtonPressed() {
        if titleButton == "START" {
            titleButton = "NEXT"
        }
        
        switch currentLight {
        case .red:
            greenLigth = 0.5
            redLigth = 1
            currentLight = .yellow
        case .yellow:
            redLigth = 0.5
            yellowLigth = 1
            currentLight = .green
        case .green:
            greenLigth = 1
            yellowLigth = 0.5
            currentLight = .red
        }
    }
}

extension TrafficLigthView {
    private enum CurrentLigtht {
        case red, yellow, green
    }
}

#Preview {
    TrafficLigthView()
}
 
