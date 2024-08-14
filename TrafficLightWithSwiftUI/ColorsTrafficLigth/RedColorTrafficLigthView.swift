//
//  RedColorTrafficLigthView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Denis Bokov on 14.08.2024.
//

import SwiftUI

struct RedColorTrafficLigthView: View {
    let foregroundColor: Color
    let strokeColor: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(foregroundColor)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(strokeColor, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#Preview {
    RedColorTrafficLigthView(foregroundColor: .red, strokeColor: .white, opacity: 0.5)
}
