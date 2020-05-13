//
//  ViewsAndModifiers.swift
//  WeSplit
//
//  Created by Abservetech on 13/05/20.
//  Copyright © 2020 Abservetech. All rights reserved.
//

import SwiftUI

struct CapulText : View {
    var text : String
    var body : some View{
        Text(text)
            .foregroundColor(Color.white)
            .background(Color.blue)
            .clipShape(Capsule())
            .padding()
            .font(.largeTitle)
    }
}

struct GridStatck<Content : View> : View {
    var row : Int
    var column : Int
    var content : (Int,Int) -> Content
    var body: some View{
        ForEach (0..<row){ rows in
            HStack{
                ForEach (0..<self.column){ columns in
                    self.content(rows,columns)
                }
            }
        }
    }
    
    init(row : Int , column : Int , @ViewBuilder content : @escaping (Int,Int)-> Content){
        self.row = row
        self.column = column
        self.content = content
    }
}

struct ViewsAndModifiers: View {
//    var body: Text {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        VStack{
//            Image(systemName: "pencil")
//        }
//        return Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
    
    let motto1 = Text("Text with property 1")
    let motto2 = Text("Text with property 2")
    var mottoBtn : some View{
        Button("Tap Property"){
            print("Button Tapped")
        }
    }
    @State var isRedBG = false
    
    var body: some View{
        VStack{
            motto1.foregroundColor(Color.red)
            motto2
            mottoBtn
        Button("Hello World"){
            self.isRedBG.toggle()
        }.frame(width: 100, height: 200, alignment: .center)
            .background(isRedBG ? Color.red : Color.green)
       
        CapulText(text: "ss")
        CapulText(text: "Sceond")
            .foregroundColor(Color.red)
            .background(Color.yellow)
            
            GridStatck(row: 4, column: 4) { (rows, columns) in
               Image(systemName: "\(rows*4+columns).circle")
                Text("R\(rows) C\(columns)")
            }
        }
    }
}

struct ViewsAndModifiers_Previews: PreviewProvider {
    static var previews: some View {
        ViewsAndModifiers()
    }
}
