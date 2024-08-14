//
//  RedColorTrafficLigthView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Denis Bokov on 14.08.2024.
//

import SwiftUI

struct RedColorTrafficLigthView: View {
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(.red)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#Preview {
    RedColorTrafficLigthView(opacity: 0.5)
}
