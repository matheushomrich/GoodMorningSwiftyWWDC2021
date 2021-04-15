

import SwiftUI
import PlaygroundSupport

public struct SetView: View {
    
    public init(){}
    
    public var body: some View {
        
        VStack(alignment: .leading) {
            VStack {
                Text("Collection Types")
                    .font(.custom("American Typewriter", size: 50))
                    .foregroundColor(Color.orange)
                    .padding(.vertical, 50)
                Text("SET")
                    .font(.custom("American Typewriter", size: 40))
                    .foregroundColor(Color.orange)
                    .padding(.vertical, 10)
                Text("A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items isn’t important, or when you need to ensure that an item only appears once.\n\nIn the the two examples below you can see how to initialize a Set:")
                    .font(.custom("American Typewriter", size: 25 ))
                    .foregroundColor(Color.white)
                    .padding(.vertical, 100)
                
                
                Image(uiImage: #imageLiteral(resourceName: "Set.png"))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 625, height: 125)
                    .cornerRadius(20)
                
                
                
                
                
                
            }
        }.padding(.horizontal, 100)
        .padding(.vertical, 100)
    }
    
}
