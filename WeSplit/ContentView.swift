//
//  ContentView.swift
//  WeSplit
//
//  Created by Janvi Arora on 03/01/25.
//

import SwiftUI

// `View` is a protocol
// View protocol has only one requirement, i.e. the body property. So, if you want to be a view, tell me what you plan to show. You can add many more properties and methods to your views, but body is the only one that's required.
// Now, inside that body is our actual layout.
struct ContentView: View {

    @State var tapCount = 0
    @State private var name = ""

    let students = ["Harry", "Sally", "John"]
    @State private var selectedStudent = "Harry"

    // A computed property
    // `some View` means it's going to return something that conforms to the View protocol
    var body: some View {
        NavigationView {
            Form {
                Section {
                    // 2-way binding
                    TextField("Enter your name", text: $name)

                    // No 2-way binding
                    Text("My name is \(name)")
                }

                Section {
                    Picker("Select a student", selection: $selectedStudent) {
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }
                }

                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                }

                Button("Tap Count: \(tapCount)") {
                    tapCount += 1
                }

                Section {
                    ForEach(0..<10) { val in
                        Text("Hey \(val)")
                    }
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// #Preview is a macro that provides preview of our current layout on canvas (on the right). This will not appear into our final shipping program, it's just for debugging, testing and designing purposes in xcode.
// Canvas is a virtual layout that provides the layout of what what our views might look like.
// To enable canvas: Editor > Canvas
// To resume canvas: Option + Cmd + P
#Preview {
    ContentView()
}

/*
 Image(systemName: "globe")
     .imageScale(.large)

 imageScale is called on the Image View, and swift calls this a modifier, because we are creating around the Image, i.e. we are modifying what it actually is.
*/

/*
 By default, iOS lets us place the content anywhere on the screen including at the top i.e below the system clock and even at the bottom below the home indicator. This does not look great, which is why by default, SwiftUI restricts us to a rectangular area that does not overlap any part of system UI or get clipped by curved devices like the iPhone 13 (the safe area).
*/

/*
 If we use only below,
 var tapCount = 0

 ERROR:
 Left side of mutating operator isn't mutable: 'self' is immutable.

 REASON:
 `ContentView` is of type struct and that might have been created as a constant and thus is immutable, and hence  the properties in struct are also immutable.

 Now, in UIKit we used `mutating` keyword i.e. `mutating func` do something. However, swift doesn't lets us make computed properties mutating, i.e we can't do:
 mutating var body: some View

 SOLUTION:
 @State var tapCount = 0

 @State, a property wrapper, a special attribute we can attach to our properties that give them superpowers that struct properties can be modified directly & will keep track of those changes for us.

 @State automatically watches for changes and when something happens it will automatically invoke the body property, just a fancy way to say that it'll reload our UI to reflect the current program state.

 Hence, @State allows us to work around the limitations of structs. We know we can't change our properties because structs are fixed, but @State allows that data to be stored separately by SwiftUI in a place that it can be modified.

 We can use classes instead, but this is the beauty of SwiftUI. It will enhance the performance by handling the creation and destruction of views on its own.

 @State is designed for simple properties that are stored in one view.
 */

/*
 TextField("Enter your name")

 ERROR:
 Missing argument for parameter 'text' in call

 SOLUTION:
 TextField("Enter your name", text: <#Binding<String>#>)

 SwiftUI wants to know where can we store the text of the text field. Now, this textField will only show a value that's stored inside our program, i.e. what SwiftUI wants is a string property somewhere in our struct that can be shown inside our textField and it'll also update whatever the user types in the textField.

 var name = ""
 TextField("Enter your name", text: name)

 ERROR:
 Cannot convert value of type 'String' to expected argument type 'Binding<String>'

 SOLUTION:
 @State private var name = ""

 SwiftUI needs to update that property as it's changed, i.e. when user types, it should be updated in name property, i.e. it's gonna change it's program state.

 ERROR:
 Cannot convert value 'name' of type 'String' to expected type 'Binding<String>', use wrapper instead

 SOLUTION:
 Use $ symbol:
 TextField("Enter your name", text: $name)

 Problem here was, SwiftUI differentiates between:
 - Show the value of this property here
 - Show the value of this property here, but write any changes back to the property as they happen.
 So, Swift needs to make sure whatever it has in the TextField should also be there in the name property, so that it can fulfil it's promise that our views are a function of their state that everything the user can see on the screen rn is actually stored somewhere else in our program as raw data.

 So, SwiftUI gives us 2-way binding, i.e.
 1. we bind the textfield so it shows the value of the underlying property
 2. we bind it so any changes we make to the textField are written back to the property, i.e. they update the property as they happen.
 */


/*
 ForEach(students, id: \.self)

 `id` is required by SwiftUI because it wants to differentiate each unique view on the screen.

 Example:
 If we rearranged our array of students to ["John", "Sally", "Harry"], so SwiftUI would like to move John at the top of the list. So, we need to tell SwiftUI how it can identify uniquely each item in our string array.

 Now, what our each string make them unique?
 The string itself

 So, when SwiftUI asks us what identifier makes each student unique, then it's the string itself.

 So, if we''l have duplicate strings in our array, we might hit a problem, but it's fine for now.
*/
