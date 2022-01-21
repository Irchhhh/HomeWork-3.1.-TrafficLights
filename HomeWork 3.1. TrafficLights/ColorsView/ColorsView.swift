//
//  ColorsView.swift
//  HomeWork 3.1. TrafficLights
//
//  Created by Ирина on 20.01.2022.
//

import SwiftUI

//MARK: - Red Color
struct RedColorView: View {
    var opacity: Double
    
    var body: some View {
        ZStack {
            redColorView
                .padding(.bottom, 350)
        }
    }
    private var redColorView: some View {
        VStack {
            Circle()
                .opacity(opacity)
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
                .overlay(Circle().stroke(.white, lineWidth: 3))
        }
    }
}

//MARK: - Yellow Color
struct RedColorView_Previews: PreviewProvider {
    static var previews: some View {
        RedColorView(opacity: 0.3)
    }
}

struct YellowColorView: View {
    var opacity: Double
    
    var body: some View {
        ZStack {
            yellowColorView
                .padding(.bottom, 130)
        }
    }
    
    private var yellowColorView: some View {
        VStack {
            Circle()
                .opacity(opacity)
                .foregroundColor(.yellow)
                .frame(width: 100, height: 100)
                .overlay(Circle().stroke(.white, lineWidth: 3))
        }
    }
}
struct YellowColorView_Previews: PreviewProvider {
    static var previews: some View {
        YellowColorView(opacity: 0.3)
    }
}

//MARK: - Green Color
struct GreenColorView: View {
    var opacity: Double
    
    private var greenColorView: some View {
        VStack {
            Circle()
                .foregroundColor(.green)
                .opacity(opacity)
                .frame(width: 100, height: 100)
                .overlay(Circle().stroke(.white, lineWidth: 3))
        }
    }
    var body: some View {
        greenColorView
            .padding(.bottom, -90)
    }
}
struct GreenColorView_Previews: PreviewProvider {
    static var previews: some View {
        GreenColorView(opacity: 0.3)
    }
}

