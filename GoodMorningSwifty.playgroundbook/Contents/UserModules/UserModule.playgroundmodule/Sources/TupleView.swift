
import SwiftUI
import PlaygroundSupport
import AVKit

public struct TupleView: View {
    @State public var start: String = ""
    @State var location: Situation = Situation.success
    @State var showFailSuccess: Bool = false
    
    public init(){}
    
    public var body: some View {
        
        VStack(alignment: .center) {
            VStack {
                Text("Tuples")
                    .font(.custom("American Typewriter", size: 50))
                    .foregroundColor(Color.orange)
                Text("Tuples group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.\n\n\nNow let`s exercise creating a tuple, for you to create a tuple write one of the following in the textfield below:")
                    .font(.custom("American Typewriter", size: 25 ))
                    .foregroundColor(Color.white)
                    .padding(.vertical, 59)
                
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
                }.padding(.vertical, 50)      
                
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

