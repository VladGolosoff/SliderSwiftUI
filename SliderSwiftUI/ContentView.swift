//
//  ContentView.swift
//  SliderSwiftUI
//
//  Created by Владислав Голосов on 24.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue: Double = 130
    @State private var greenSliderValue: Double = 130
    @State private var blueSliderValue: Double = 130
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.4)
                .ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(height: 300.0)
                    .foregroundColor(Color(
                        red: redSliderValue/255,
                        green: greenSliderValue/255,
                        blue: blueSliderValue/255))
                    .padding()
                VStack {
                    SliderStack(value: $redSliderValue, color: .red)
                    SliderStack(value: $greenSliderValue, color: .green)
                    SliderStack(value: $blueSliderValue, color: .blue)
                }
                .padding(.horizontal)
                Spacer()
            }
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ContentView()
            }
        }
    }
    
}
