//
//  TrafficLigthView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Denis Bokov on 13.08.2024.
//

import SwiftUI

struct TrafficLigthView: View {
    private let strokeColor: Color = .white
    private let lightIsOn: Double = 1
    private let lightIsOff: Double = 0.5
    
    var body: some View {
        VStack {
            RedColorTrafficLigthView(foregroundColor: .red, strokeColor: strokeColor, opacity: lightIsOff)
                .padding(.bottom, 5)
            YellowColorTrafficLigthView(foregroundColor: .yellow, strokeColor: strokeColor, opacity: lightIsOff)
                .padding(.bottom, 5)
            GreenColorTrafficLigthView(foregroundColor: .green, strokeColor: strokeColor, opacity: lightIsOff)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
        }
        .padding()
        Spacer()
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack{
                Text("START")
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            }
            .font(.system(.title, design: .rounded, weight: .bold))
            .foregroundColor(.blue)
            .background(RoundedRectangle(cornerRadius: 10).stroke(.blue, lineWidth: 4))
            .padding(EdgeInsets(top: 0, leading: 50, bottom: 50, trailing: 50))
        })
    }
}

#Preview {
    TrafficLigthView()
}
 
