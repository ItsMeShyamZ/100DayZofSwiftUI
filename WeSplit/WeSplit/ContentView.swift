//
//  ContentView.swift
//  WeSplit
//
//  Created by Abservetech on 07/05/20.
//  Copyright © 2020 Abservetech. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount = 0
    @State var name = ""
    let pickerArray = ["First" , "Second" , "Third" , "Fourth" , "Fifth"]
    @State var selectedPosition = "Second"
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    let tipPercentages = [10,15,20,25,0]
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0

        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }
    var body: some View {
        NavigationView{
            Form{
//                Group{
//                    Text("Hello, SwiftUI, this is the Group  placed insed the form")
//
//                }
//                Section{
//                    Text("This is the Section placed insed the form")
//                }
//                Section{
//                    Button("Tap count of button is :\(tapCount)"){
//                        self.tapCount += 1
//                    }
//
//                    TextField("Enter your name" , text: $name)
//                    Text("Your name is \(name)")
//                }
//                Section{
//                    Text("Section with Loop concept")
//                    ForEach(0..<5){
//                        Text("Hello Loop \($0)")
//                    }
//
//                    Picker("Select the position" , selection: $selectedPosition){
//                        ForEach(0..<self.pickerArray.count){
//                            Text(self.pickerArray[$0])
//                        }
//                    }
//
//                }
                Section{
                    TextField("Amount" , text: $checkAmount)
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people",selection: $numberOfPeople){
                        ForEach(2..<100){
                            Text("\($0) People")
                        }
                    }
                    
                }
                
                Section(header: Text("How much tip do you want to leave?")){
                    
                    Picker("Tip Percentage" ,selection: $tipPercentage){
                        ForEach(0..<tipPercentages.count){
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                Section{
                    Text("$\(totalPerPerson,specifier: "%.2f")")
                }
                .navigationBarTitle("WeSplit" , displayMode: .automatic)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
