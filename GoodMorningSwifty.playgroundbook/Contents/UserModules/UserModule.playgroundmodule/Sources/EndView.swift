import SwiftUI
import PlaygroundSupport

public struct EndView: View   {
    @State public var start: String = "" 
    
    public init(){}
    
    public var body: some View {
        VStack {
            VStack(alignment: .center) {
                Text("Thank you for experiencing")
                    .font(.custom("American Typewriter", size: 50 ))
                    .foregroundColor(Color.orange)
                
                Text("Good Morning Swifty")
                    .font(.custom("American Typewriter", size: 50 ))
                    .foregroundColor(Color.orange)
                
                
            }
            
            Spacer()
            
            Image(uiImage: #imageLiteral(resourceName: "memoji.png"))
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
                .foregroundColor(.black)
            
            Spacer()
            
            Text("Now that you have already done your wake up Swift \ncoding how about having some coffee for breakfast?")
                .font(.custom("American Typewriter", size: 25 ))
                .foregroundColor(Color.orange)
            
            Spacer()
            
            Button(action: {
                playSoundLoop(sound: "music", type: "mpeg")
            }, label: { 
                Text("☕️")
                    .font(.custom("American Typewriter", size: 150 ))
            })
        }.padding(.vertical, 100)
        .padding(.horizontal, 50)
    }
}

