import SwiftUI

struct ContentView: View {
    @State var number1: Int = 0
    @State var number2: Int = 0
    @State var answer: Int = 0
    var body: some View {
        
        TextField("Enter Number 1 here", value: $number1, format: .number)
            .multilineTextAlignment(.center)
            .textFieldStyle(.roundedBorder)
        TextField("Enter Number 2 here", value: $number2, format: .number)
            .multilineTextAlignment(.center)
            .textFieldStyle(.roundedBorder)
        HStack{
            Button("Add") {
                answer = number1 + number2
            }
            .frame(width: 75, height: 30 )
            .background(.blue)
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                        .foregroundStyle(.black)
            Button("Multiply") {
                answer = number1 * number2
            }
            .frame(width: 75, height: 30 )
            .background(.blue)
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                        .foregroundStyle(.black)
            Button("Subtract") {
                answer = number1 - number2
            }
            .frame(width: 75, height: 30 )
            .background(.blue)
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                        .foregroundStyle(.black)
        }
        .padding()
        Text("\(answer)")
    }
}
