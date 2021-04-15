
import SwiftUI
import PlaygroundSupport

public struct ArrayView: View {
    
    public init(){}
    
    public var body: some View {
        
        VStack(alignment: .leading) {
            VStack {
                Text("Collection Types")
                    .font(.custom("American Typewriter", size: 50))
                    .foregroundColor(Color.orange)
                    .padding(.vertical, 50)
                Text("ARRAY")
                    .font(.custom("American Typewriter", size: 40))
                    .foregroundColor(Color.orange)
                    .padding(.vertical, 10)
                Text("An array stores values of the same type in an ordered list. The same value can appear in an array multiple times at different positions\n\nIn the the two examples below you can see how to initialize an array:")
                    .font(.custom("American Typewriter", size: 25 ))
                    .foregroundColor(Color.white)
                    .padding(.vertical, 100)
                
                
                Image(uiImage: #imageLiteral(resourceName: "array.png"))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 625, height: 150)
                    .cornerRadius(20)
                
                
                
                
                
                
            }
        }.padding(.horizontal, 100)
        .padding(.vertical, 100)
    }
    
}
