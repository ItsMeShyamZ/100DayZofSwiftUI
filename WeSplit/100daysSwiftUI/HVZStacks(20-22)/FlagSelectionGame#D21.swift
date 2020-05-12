//
//  FlagSelectionGame#D21.swift
//  WeSplit
//
//  Created by Abservetech on 12/05/20.
//  Copyright © 2020 Abservetech. All rights reserved.
//

import SwiftUI

struct FlagSelectionGame_D21: View {
   @State private  var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()

    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    var body: some View {
        ZStack{
            LinearGradient.init(gradient: Gradient(colors: [.white,.black,.blue]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack(spacing : 30){
                VStack{
                    Text("Tap the flag of")
                        .foregroundColor(.black)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                ForEach(0..<3){number in
                    VStack{
                    Button(action: {
                        self.flagTapped(number)
                    }, label: {
                        Image(self.countries[number])
                            .renderingMode(.original)
                            .clipShape(Capsule())
                            .overlay(Capsule().stroke(Color.black,lineWidth: 1))
                            .shadow(color: .black,radius: 5)
                        
                        
                    })
                        Text(self.countries[number]).hidden()
                    }
                }
                
                Spacer()
            }
        }
        .alert(isPresented: $showingScore){
            Alert(title: Text(scoreTitle), message:  Text("Your Score is ???"), dismissButton: .default(Text("Continue")){
                self.askQuestion()
            })
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }

        showingScore = true
    }
    
    func showScore(){
        if self.showingScore{
            Alert(title: Text(scoreTitle), message:  Text("Your Score is ???"), dismissButton: .default(Text("Continue")){
                self.askQuestion()
            })
        }
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct FlagSelectionGame_D21_Previews: PreviewProvider {
    static var previews: some View {
        FlagSelectionGame_D21()
    }
}
