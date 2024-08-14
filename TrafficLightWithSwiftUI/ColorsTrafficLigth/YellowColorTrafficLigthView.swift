//
//  YellowColorTrafficLigthView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Denis Bokov on 14.08.2024.
//

import SwiftUI

struct YellowColorTrafficLigthView: View {
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(.yellow)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#Preview {
    YellowColorTrafficLigthView(opacity: 0.1)
}
