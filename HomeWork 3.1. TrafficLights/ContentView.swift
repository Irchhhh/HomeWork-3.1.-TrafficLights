//
//  ContentView.swift
//  HomeWork 3.1. TrafficLights
//
//  Created by Ирина on 20.01.2022.
//

import SwiftUI

struct ContentView: View {
    enum Colors {
        case red, yellow, green
    }
    
    @State var currentColor = Colors.red
    
    @State private var redColor = 0.3
    @State private var yellowColor = 0.3
    @State private var greenColor = 0.3
    
    private var lightOff: CGFloat = 0.3
    private var lightOn: CGFloat = 1
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            RedColorView(opacity: redColor)
            YellowColorView(opacity: yellowColor)
            GreenColorView(opacity: greenColor)
            Spacer()
            
            Button(action: {
                switch currentColor {
                case .red:
                    redColor = lightOff
                    redColor = lightOn
                    greenColor = lightOff
                    currentColor = .yellow
                case .yellow:
                    yellowColor = lightOn
                    redColor = lightOff
                    currentColor = .green
                case .green:
                    greenColor = lightOn
                    yellowColor = lightOff
                    currentColor = .red
                }
            }) {
                Text("NEXT")
                    .font(.title)
                    .frame(width: 200, height: 50.0)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .padding(.top, 360)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
