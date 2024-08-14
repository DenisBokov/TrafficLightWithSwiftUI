//
//  GreenColorTrafficLigthView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Denis Bokov on 14.08.2024.
//

import SwiftUI

struct GreenColorTrafficLigthView: View {
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(.green)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#Preview {
    GreenColorTrafficLigthView(opacity: 0.1)
}
