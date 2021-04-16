import SwiftUI
import PlaygroundSupport

public struct TypeView: View {
    @State var start: String = ""
    @State var location: Situation = Situation.none
    @State var showFailSuccess: Bool = false
    
    public init(){}
    
    public var body: some View {
        
        VStack(alignment: .leading) {
            VStack {
                Text("Type Annotations")
                    .font(.custom("American Typewriter", size: 50))
                    .foregroundColor(Color.orange)
                Text("You can provide a type annotation when you declare a constant or variable, to be clear about the kind of values the constant or variable can store. Write a type annotation by placing a colon after the constant or variable name, followed by a space, followed by the name of the type to use.\n\n\nNow let`s exercise creating a variable with a specific type annotated, for you to create a typed variable write the following in the textfield below:")
                    .font(.custom("American Typewriter", size: 25 ))
                    .foregroundColor(Color.white)
                    .padding(.vertical, 100)
                HStack {
                    Text("var")
                        .font(.custom("American Typewriter", size: 40))
                        .foregroundColor(Color.pink)
                        .padding(.vertical, 100)
                    Text("myMyvariable:")
                        .font(.custom("American Typewriter", size: 40))
                        .foregroundColor(Color.white)
                        .padding(.vertical, 100)
                    Text("String")
                        .font(.custom("American Typewriter", size: 40))
                        .foregroundColor(Color.purple)
                        .padding(.vertical, 100)
                }
                
            }
            
            HStack {
                TextField("//code here", text: $start)
                    .font(.largeTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.leading)
                
                Button(action: {
                    location = verifyInputTypedVariable(input: start)
                    showFailSuccess = true
                }, label: {
                    Image(systemName: "play.fill")
                        .foregroundColor(Color.orange)
                        .font(.largeTitle)
                })
            }
            
            Spacer()
            
            if showFailSuccess {
                //SuccessFailView(start: $start, location: $location)
            }
            
        }.padding(.horizontal, 100)
        .padding(.vertical, 100)
        
    }
    
}
