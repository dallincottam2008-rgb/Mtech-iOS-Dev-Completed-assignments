//
//  ControlsView.swift
//  UIElements
//
//  Created by Dallin J Cottam on 9/30/25.
//

import SwiftUI

struct ControlsView: View {
    @State private var isOn = false
    @State private var textFieldText = ""
    @State private var sliderVal = 0.0
    @State private var pickerVal = "Option 1"
    
    var body: some View {
        VStack{
            Toggle("This is a toggle", isOn: $isOn)
        }
        
        TextField("Text Field or smth idk", text: $textFieldText, prompt: Text("This is a prompt"), axis: .horizontal)
        
        SecureField("Text Field or smth idk", text: $textFieldText, prompt: Text("This is a prompt"))
        
        
        VStack{
            Text("sliderval is \(sliderVal)")
            
            Slider(value: $sliderVal)

            Slider(value: $sliderVal, in: 0...10, step: 1) {
                editing in
                print("is editing \(editing)")
            }
            
            
        }
        
        Picker("This is a picker", selection: $pickerVal) {
            ForEach(["Option 1", "Option 2", "Option 3"], id: \.self) { item  in
                Text(item)
                    .tag(item)
            }
        }

    }
}

#Preview {
    ControlsView()
}
