import SwiftUI
import PlaygroundSupport

public struct BasicOperatorsView: View {
    @State public var start: String = ""
    @State var location: Situation = Situation.none
    @State var showFailSuccess: Bool = false
    
    public init(){}
    
    public var body: some View {
        
        VStack(alignment: .leading) {
            VStack {
                Text("Basic Opertators")
                    .font(.custom("American Typewriter", size: 50))
                    .foregroundColor(Color.orange)
                Text("An operator is a special symbol or phrase that you use to check, change, or combine values. For example, the addition operator (+) adds two numbers, as in let i = 1 + 2, and the logical AND operator (&&) combines two Boolean values, as in if enteredDoorCode && passedRetinaScan.\n\n\nHere are the main operators you need to know:")
                    .font(.custom("American Typewriter", size: 25 ))
                    .foregroundColor(Color.white)
                    .padding(.vertical, 100)
                
                
                VStack(alignment: .leading) {
                    OperatorsView1()
                    OperatorsView2()
                }
                
                
            }
        }.padding(.horizontal, 100)
        .padding(.vertical, 100)
    }
    
}
