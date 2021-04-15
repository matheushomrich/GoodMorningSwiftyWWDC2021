
import SwiftUI
import PlaygroundSupport

public struct CollecionTypesView: View {
    public init(){}
    
    public var body: some View {
        
        VStack(alignment: .leading) {
            VStack {
                Text("Collection Types")
                    .font(.custom("American Typewriter", size: 50))
                    .foregroundColor(Color.orange)
                    .padding(.vertical, 50)
                Text("Swift provides three primary collection types, known as arrays, sets, and dictionaries, for storing collections of values. Arrays are ordered collections of values. Sets are unordered collections of unique values. Dictionaries are unordered collections of key-value associations.")
                    .font(.custom("American Typewriter", size: 25 ))
                    .foregroundColor(Color.white)
                
                Text("The three primary Collection Types are:")
                    .font(.custom("American Typewriter", size: 30 ))
                    .foregroundColor(Color.orange)
                    .padding(.vertical, 100)
                
                Text("Array")
                    .font(.custom("American Typewriter", size: 40 ))
                    .foregroundColor(Color.purple)
                    .padding(.vertical, 20)
                
                Text("Set")
                    .font(.custom("American Typewriter", size: 40 ))
                    .foregroundColor(Color.purple)
                    .padding(.vertical, 20)
                
                Text("Dictionary")
                    .font(.custom("American Typewriter", size: 40 ))
                    .foregroundColor(Color.purple)
                    .padding(.vertical, 20)
                
            }
            
            
        }.padding(.horizontal, 100)
        .padding(.vertical, 100)
        
    }
    
}
