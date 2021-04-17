
import SwiftUI
import PlaygroundSupport
import AVKit

public struct LetView: View {
    @State public var start: String = ""
    @State var location: Situation = Situation.success
    @State var showFailSuccess: Bool = false
    
    public init(){}
    
    public var body: some View {
        
        VStack(alignment: .center) {
            VStack {
                Text("Constants and Variables")
                    .font(.custom("American Typewriter", size: 50))
                    .foregroundColor(Color.orange)
                Text("Constants and variables associate a name with a value of a particular type. The value of a constant can’t be changed once it’s set, whereas a variable can be set to a different value in the future.\n\n\nNow let`s exercise creating a constant, for you to create a costant write the following in the textfield below:")
                    .font(.custom("American Typewriter", size: 25 ))
                    .foregroundColor(Color.white)
                    .padding(.vertical, 50)
                HStack {
                    Text("let")
                        .font(.custom("American Typewriter", size: 40))
                        .foregroundColor(Color.pink)
                        .padding(.vertical, 50)
                    Text("myConstant")
                        .font(.custom("American Typewriter", size: 40))
                        .foregroundColor(Color.white)
                        .padding(.vertical, 50)
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


