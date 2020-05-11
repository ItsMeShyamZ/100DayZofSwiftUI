//
//  HVZStacks.swift
//  WeSplit
//
//  Created by Abservetech on 11/05/20.
//  Copyright © 2020 Abservetech. All rights reserved.
//

import SwiftUI

struct HVZStacks: View {
    @State private var showAlert = false
    var body: some View {
//        HStack(spacing:20){
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).background(Color.yellow)
//            Text("This is TextView")
//        }
//        ZStack(alignment: .top){
//            Color.green.frame(width: 200, height: 200, alignment: .center)
//            Color.red.edgesIgnoringSafeArea(.all)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).background(Color.yellow)
//            Text("Hellojghjmghjhgj,hgj,,jbkj, Wokhgjfjhmfmgfhmghgchmghmvhnfhfv,hrld!")
//        }
        
        
        //Gradient
//        LinearGradient(gradient: Gradient(colors: [.black,.white]), startPoint: .top, endPoint: .bottom)
//        RadialGradient(gradient: Gradient(colors: [.black,.white]), center: .b, startRadius: 20, endRadius: 50)
        
//        AngularGradient(gradient: Gradient(colors: [.black,.white,.red,.green] ), center: .center)
        
        
        //Button and Images
        
//        Button("Tap me"){
//            print("Button tapped")
//        }
        
//        Button(action: {
//            print("Button tapped")
//        }){
//            HStack(spacing: 10){
//                Image(systemName: "pencil").renderingMode(.original)
//                Text("Edit")
//            }
//        }
        
        //Alert
        Button(action: {
            self.showAlert = true
        }){
            Text("Tap to show Alert ")
        }
        .alert(isPresented: $showAlert) { () -> Alert in
            Alert(title: Text("This is my first alert"), message: Text("Alert discription "), dismissButton: .default(Text("OK")))
        }
        
        
    }
}

struct HVZStacks_Previews: PreviewProvider {
    static var previews: some View {
        HVZStacks()
    }
}
