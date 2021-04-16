
import SwiftUI
import PlaygroundSupport

public struct StartView: View   {
    @State public var start: String = "" 
    
    public init(){}
    
    public var body: some View {
        VStack {
            Text("Good Morning Swifty")
                .font(.custom("American Typewriter", size: 50 ))
                .foregroundColor(Color.orange)
            
            Spacer()
            
            Image(systemName: "swift")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
                .foregroundColor(.black)
            
            Spacer()
            
            Text("How about waking up to some SWIFT code exercising?")
                .font(.custom("SF", size: 25 ))
                .foregroundColor(Color.orange)
            
            Spacer()
            
            Button(action: {
                playSoundLoop(sound: "music", type: "mpeg")
            }, label: { 
                HStack {
                    Text("Start")
                        .font(.system(size: 50))
                        .padding()
                        .foregroundColor(.orange)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.orange, lineWidth: 5)
                        )
                }
            })
        }.padding(.vertical, 100)
    }
}

