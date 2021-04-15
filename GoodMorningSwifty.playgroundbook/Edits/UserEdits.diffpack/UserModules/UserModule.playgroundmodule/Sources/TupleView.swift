
import SwiftUI
import PlaygroundSupport

public struct TupleView: View {
    @State public var start: String = ""
    @State var location: Situation = Situation.none
    @State var showFailSuccess: Bool = false
    
    public init(){}
    
    public var body: some View {
        
        VStack(alignment: .leading) {
            VStack {
                Text("Tuples")
                    .font(.custom("American Typewriter", size: 50))
                    .foregroundColor(Color.orange)
                Text("Tuples group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.\n\n\nNow let`s exercise creating a tuple, for you to create a tuple write one of the following in the textfield below:")
                    .font(.custom("American Typewriter", size: 25 ))
                    .foregroundColor(Color.white)
                    .padding(.vertical, 100)
                
                HStack {
                    HStack {
                        Text("let")
                            .font(.custom("American Typewriter", size: 30))
                            .foregroundColor(Color.pink)
                        Text("http404Error = (")
                            .font(.custom("American Typewriter", size: 30))
                            .foregroundColor(Color.white)
                        Text("404")
                            .font(.custom("American Typewriter", size: 30))
                            .foregroundColor(Color.yellow)
                        Text(", ")
                            .font(.custom("American Typewriter", size: 30))
                            .foregroundColor(Color.white)
                        Text("'Not Found'")
                            .font(.custom("American Typewriter", size: 30))
                            .foregroundColor(Color(UIColor.brown))
                        Text(")")
                            .font(.custom("American Typewriter", size: 30))
                            .foregroundColor(Color.white)
                    }
                }.padding(.vertical, 100)
                
                
                
            }
            
            HStack {
                TextField("//code here", text: $start)
                    .font(.largeTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.leading)
                
                Button(action: {
                    location = verifyInputComment(input: start)
                    showFailSuccess = true
                }, label: {
                    Image(systemName: "play.fill")
                        .foregroundColor(Color.orange)
                        .font(.largeTitle)
                })
            }.padding(.vertical, 30)
            
            Spacer()
            
            if showFailSuccess {
                SuccessFailView(start: start, location: location)
            }
            
        }.padding(.horizontal, 100)
        .padding(.vertical, 100)
        
    }
    
}

