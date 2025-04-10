import SwiftUI

struct ContentView: View {
    @State var number1: Int = 0
    @State var number2: Int = 0
    @State var answer: Int = 0
    var body: some View {
        
        TextField("Enter Number 1 here", value: $number1, format: .number)
            .multilineTextAlignment(.center)
        TextField("Enter Number 2 here", value: $number2, format: .number)
            .multilineTextAlignment(.center)
        HStack{
            Button("Add") {
                answer = number1 + number2
            }
            Button("Multiply") {
                answer = number1 * number2
            }
        }
        Button("Subtract") {
            answer = number1 - number2
        }
        Text("\(answer)")
    }
}
