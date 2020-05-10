//
//  ChallngeOne.swift
//  WeSplit
//
//  Created by Abservetech on 10/05/20.
//  Copyright © 2020 Abservetech. All rights reserved.
//

import SwiftUI

struct ChallngeOne: View {
    var tempUnit = ["Celsius" , "Fahrenheit", "Kelvin"]
    @State var inputTempSelection = 0
    @State var outputTempSelection = 0
    @State var inputTemp = ""
   
    var outputTemp: String{
        var temp = Measurement(value: Double(inputTemp) as? Double ?? 0.0, unit: getTempUnit(tempUnit: self.tempUnit[self.inputTempSelection]))
        let output = temp.converted(to: getTempUnit(tempUnit: self.tempUnit[self.outputTempSelection]))
        return "\(output)"
    }
     
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Temperature conversion")) {
                    Section(header: Text("Input")) {
                        TextField("Enter Temperature(or it will consider 0)" , text: $inputTemp).keyboardType(.numberPad)
                        Picker("", selection: $inputTempSelection) {
                            ForEach(0..<tempUnit.count){
                                Text("\(self.tempUnit[$0])")
                            }
                        }.pickerStyle(SegmentedPickerStyle())
                        
                    }
                    Section(header: Text("Output ")) {
                        Picker("", selection: $outputTempSelection) {
                            ForEach(0..<tempUnit.count){
                                Text("\(self.tempUnit[$0])")
                            }
                        }.pickerStyle(SegmentedPickerStyle())
                        
                        Text("You Temperature in \(self.tempUnit[outputTempSelection]) is : \(outputTemp)")
                    }
                }

            }
        .navigationBarTitle("C1-Measurement")
        }
    }
    func getTempUnit(tempUnit : String) -> UnitTemperature{
        switch tempUnit {
        case "Celsius":
            return UnitTemperature.celsius
        case "Fahrenheit":
            return UnitTemperature.fahrenheit
        case "Kelvin":
            return UnitTemperature.kelvin
       default:
           return UnitTemperature.celsius
        }
    }
}

struct ChallngeOne_Previews: PreviewProvider {
    static var previews: some View {
        ChallngeOne()
    }
}

