import SwiftUI

struct ContentView: View {
    @State var number1: Int = 0
    @State var number2: Int = 0
    var body: some View {
        TextField("Enter Number 2 here", value: $number2, format: .number)
    }
}
