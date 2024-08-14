//
//  TrafficLigthView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Denis Bokov on 13.08.2024.
//

import SwiftUI

struct TrafficLigthView: View {
    var body: some View {
        RedColorTrafficLigthView(foregroundColor: .red, strokeColor: .white)
        YellowColorTrafficLigthView(foregroundColor: .yellow, strokeColor: .white)
        GreenColorTrafficLigthView(foregroundColor: .green, strokeColor: .white)
    }
}

#Preview {
    TrafficLigthView()
}
 
