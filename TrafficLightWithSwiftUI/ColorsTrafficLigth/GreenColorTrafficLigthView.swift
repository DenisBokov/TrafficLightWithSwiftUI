//
//  GreenColorTrafficLigthView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Denis Bokov on 14.08.2024.
//

import SwiftUI

struct GreenColorTrafficLigthView: View {
    let foregroundColor: Color
    let strokeColor: Color
    
    var body: some View {
        Circle()
            .foregroundStyle(foregroundColor)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(strokeColor, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#Preview {
    GreenColorTrafficLigthView(foregroundColor: .green, strokeColor: .white)
}
