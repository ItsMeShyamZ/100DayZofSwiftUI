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
    var body: some View {
        NavigationView{
            Form{
                Group{
                    Text("Hello, SwiftUI, this is the Group  placed insed the form")

                }
                Section{
                    Text("This is the Section placed insed the form")
                }
                Section{
                    Button("Tap count of button is :\(tapCount)"){
                        self.tapCount += 1
                    }

                    TextField("Enter your name" , text: $name)
                    Text("Your name is \(name)")
                }
                Section{
                    Text("Section with Loop concept")
                    ForEach(0..<5){
                        Text("Hello Loop \($0)")
                    }

                    Picker("Select the position" , selection: $selectedPosition){
                        ForEach(0..<self.pickerArray.count){
                            Text(self.pickerArray[$0])
                        }
                    }

                }
                Section{
                    TextField("Amount" , text: $checkAmount)
                        .keyboardType(.decimalPad)
                    
                }
                Section{
                    Text("$\(checkAmount)")
                }
                .navigationBarTitle("SwiftUI" , displayMode: .inline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
