import SwiftUI
import PlaygroundSupport

public struct CommentView: View {
    @State var start: String = ""
    @State var location: Situation = Situation.none
    @State var showFailSuccess: Bool = false
    
    public init(){}
    
    public var body: some View {
        
        VStack(alignment: .leading) {
            VStack {
                Text("Comments")
                    .font(.custom("American Typewriter", size: 50))
                    .foregroundColor(Color.orange)
                Text("Use comments to include nonexecutable text in your code, as a note or reminder to yourself. Comments are ignored by the Swift compiler when your code is compiled.\n\n\nNow let`s exercise creating a comment, for you to create a comment write one of the following examples in the textfield below:")
                    .font(.custom("American Typewriter", size: 25 ))
                    .foregroundColor(Color.white)
                    .padding(.vertical, 100)
                Text("// This is a comment\n")
                    .font(.custom("American Typewriter", size: 35))
                    .foregroundColor(Color.green)
                Text("/* This is also a comment \nbut is written over \nmultiple lines. */")
                    .font(.custom("American Typewriter", size: 35))
                    .foregroundColor(Color.green)
                    .padding(.vertical, 10)
                
                
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
                //SuccessFailView(start: $start, location: $location)
            }
            
        }.padding(.horizontal, 100)
        .padding(.vertical, 100)
        
    }
    
}
