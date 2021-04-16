

import SwiftUI
import PlaygroundSupport

public struct DictionaryView: View {
    
    public init(){}
    
    public var body: some View {
        
        VStack(alignment: .leading) {
            VStack {
                Text("Collection Types")
                    .font(.custom("American Typewriter", size: 50))
                    .foregroundColor(Color.orange)
                    .padding(.vertical, 50)
                Text("DICTIONARY")
                    .font(.custom("American Typewriter", size: 40))
                    .foregroundColor(Color.orange)
                    .padding(.vertical, 10)
                Text("A dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary. Unlike items in an array, items in a dictionary don’t have a specified order. You use a dictionary when you need to look up values based on their identifier, in much the same way that a real-world dictionary is used to look up the definition for a particular word.\n\nIn the the two examples below you can see how to initialize an array:")
                    .font(.custom("American Typewriter", size: 25 ))
                    .foregroundColor(Color.white)
                    .padding(.vertical, 100)
                
                
                Image(uiImage: #imageLiteral(resourceName: "dict.png"))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 650, height: 150)
                    .cornerRadius(20)
                
            }
        }.padding(.horizontal, 100)
        .padding(.vertical, 100)
    }
    
}
