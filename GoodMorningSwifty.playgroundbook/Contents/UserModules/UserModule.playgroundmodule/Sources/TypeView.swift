import SwiftUI
import PlaygroundSupport
import AVKit

public struct TypeView: View {
    @State public var start: String = ""
    @State var location: Situation = Situation.success
    @State var showFailSuccess: Bool = false
    
    public init(){}
    
    public var body: some View {
        
        VStack(alignment: .center) {
            VStack {
                Text("Type Annotations")
                    .font(.custom("American Typewriter", size: 50))
                    .foregroundColor(Color.orange)
                Text("You can provide a type annotation when you declare a constant or variable, to be clear about the kind of values the constant or variable can store. Write a type annotation by placing a colon after the constant or variable name, followed by a space, followed by the name of the type to use.\n\n\nNow let`s exercise creating a variable with a specific type annotated, for you to create a typed variable write the following in the textfield below:")
                    .font(.custom("American Typewriter", size: 25 ))
                    .foregroundColor(Color.white)
                    .padding(.vertical, 50)
                HStack {
                    Text("var")
                        .font(.custom("American Typewriter", size: 40))
                        .foregroundColor(Color.pink)
                        .padding(.vertical, 50)
                    Text("myMyvariable:")
                        .font(.custom("American Typewriter", size: 40))
                        .foregroundColor(Color.white)
                        .padding(.vertical, 50)
                    Text("String")
                        .font(.custom("American Typewriter", size: 40))
                        .foregroundColor(Color.purple)
                        .padding(.vertical, 50)
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
                                .frame(width: 200, height: 100)
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
