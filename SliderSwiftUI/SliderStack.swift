//
//  SliderStack.swift
//  SliderSwiftUI
//
//  Created by Владислав Голосов on 25.01.2022.
//

import SwiftUI

struct SliderStack: View {
    @Binding var value: Double
    @State private var text = ""
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .multilineTextAlignment(.center)
                .frame(width: 40.0, height: 20.0)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: value) { newValue in
                    text = "\(lround(newValue))"
                }
            TextFieldView(text: $text, value: $value)
        }
        .onAppear {
            text = "\(lround(value))" }
    }
}



struct SliderStack_Previews: PreviewProvider {
    static var previews: some View {
        SliderStack(value: .constant(127) , color: .red)
    }
}



