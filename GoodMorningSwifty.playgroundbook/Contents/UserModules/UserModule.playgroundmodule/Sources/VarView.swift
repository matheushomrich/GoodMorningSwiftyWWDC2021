
import SwiftUI
import PlaygroundSupport

public struct VarView: View {
    @State var start: String = ""
    @State var location: Situation = Situation.none
    @State var showFailSuccess: Bool = false
    
    public init(){}
    
    public var body: some View {
        
        VStack(alignment: .leading) {
            VStack {
                Text("Constants and Variables")
                    .font(.custom("American Typewriter", size: 50))
                    .foregroundColor(Color.orange)
                Text("Constants and variables associate a name with a value of a particular type. The value of a constant can’t be changed once it’s set, whereas a variable can be set to a different value in the future.\n\n\nNow let`s exercise creating a variable, for you to create a costant write the following in the textfield below:")
                    .font(.custom("American Typewriter", size: 25 ))
                    .foregroundColor(Color.white)
                    .padding(.vertical, 100)
                HStack {
                    Text("var")
                        .font(.custom("American Typewriter", size: 40))
                        .foregroundColor(Color.pink)
                        .padding(.vertical, 100)
                    Text("myVariable")
                        .font(.custom("American Typewriter", size: 40))
                        .foregroundColor(Color.white)
                        .padding(.vertical, 100)
                }
                
            }
            
            HStack {
                TextField("//code here", text: $start)
                    .font(.largeTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.leading)
                
                Button(action: {
                    location = verifyInputConstant(input: start)
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