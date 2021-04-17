
import SwiftUI
import PlaygroundSupport
import AVKit

public struct CommentView: View {
    @State public var start: String = ""
    @State var location: Situation = Situation.success
    @State var showFailSuccess: Bool = false
    
    public init(){}
    
    public var body: some View {
        
        VStack(alignment: .center) {
            VStack {
                Text("Comments")
                    .font(.custom("American Typewriter", size: 50))
                    .foregroundColor(Color.orange)
                Text("Use comments to include nonexecutable text in your code, as a note or reminder to yourself. Comments are ignored by the Swift compiler when your code is compiled.\n\n\nNow let`s exercise creating a comment, for you to create a comment write one of the following examples in the textfield below:")
                    .font(.custom("American Typewriter", size: 25 ))
                    .foregroundColor(Color.white)
                    .padding(.vertical, 50)
                Text("// This is a comment\n")
                    .font(.custom("American Typewriter", size: 30))
                    .foregroundColor(Color.green)
                Text("/* This is also a comment \nbut is written over \nmultiple lines. */")
                    .font(.custom("American Typewriter", size: 30))
                    .foregroundColor(Color.green)
            }
            
            HStack {
                TextField("//code here", text: $start)
                    .font(.largeTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.leading)
                
                Button(action: {
                    location = verifyInputComment(input: start)
                    showFailSuccess = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                        showFailSuccess = false
                        playSoundLoop(sound: "music", type: "mpeg")
                    }
                }, label: {
                    Image(systemName: "play.fill")
                        .foregroundColor(Color.orange)
                        .font(.largeTitle)
                })
            }
            

            if showFailSuccess {
                VStack {
                    if location == Situation.success {
                        VStack {
                            Image(uiImage: #imageLiteral(resourceName: "success.png"))
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                                .cornerRadius(20)
                                .padding(.vertical, 30)
                        }.onAppear {
                            playSound(sound: "success", type: "mp3")
                        }
                        
                    } else if location == Situation.failed {
                        VStack {
                            Image(uiImage: #imageLiteral(resourceName: "failed.png"))
                                .resizable()
                                .scaledToFit()
                                .frame(width: 135, height: 200)
                                .cornerRadius(20)
                                .padding(.vertical, 30)
                        }.onAppear {
                            playSound(sound: "fail", type: "mp3")
                        }
                    }
                }
            }
            

        }.padding(50)    
    }  
}
