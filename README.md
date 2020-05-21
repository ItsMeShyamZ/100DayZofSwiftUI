# 100DaysofSwiftUI
Here im going to learn swiftUI with consistently for next 100 days. i have start learing on 07/05/2020

KeyNotes:
1. the ContentView struct you’ll see a ContentView_Previews struct, which conforms to the PreviewProvider protocol. This piece of code won’t actually form part of your final app that goes to the App Store, but is instead specifically for Xcode to use so it can show a preview of your UI design alongside your code
2.This limit of 10 children inside a parent actually applies everywhere in SwiftUI.
3.ForEach doesn’t get hit by the 10-view limit that would affect us if we had typed the views by hand.
4.convert units using Unit and Measurement 


1. VStack,HStack,Zstack views user to combine more views in single view
2.in SwiftUi color is comes under view
3.colorView by default it placed under sarface area only. if we place it full screen we use edgesIgnoringSafeArea(.all)
4.3 types of Gradient 1)LinearGradient 2)RadialGradient 3)AngularGradient

Views And modifiers:

1)If you use a class for your view you might find your code either doesn’t compile or crashes at runtime. Trust me on this: use a struct. and struct creat memory for what we created in that struct clouser. but class created memory for all whit we inherited from base class
2)Swift’s type(of:) method prints the exact type of a particular value, and in this instance it will print the following: ModifiedContent<ModifiedContent<Button<Text>, _BackgroundModifier<Color>>, _FrameLayout> , so its stack of modifiers placed one by one.
3.What some View lets us do is say “this will return one specific type of view, such as Button or Text, but I don’t want to say what.” So, the hole that View has will be filled by a real view, but we aren’t required to write out the exact long type.
4.Conditional Modeifier and Environmental modifier 
  
 Steper:
Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
    Text("\(sleepAmount) hours")
}

DatePicker:
DatePicker("Please enter a date", selection: $wakeUp, in: Date()...)
Stepper, DatePicker, DateFormatter and done BetterRest app
