import SwiftUI
import PlaygroundSupport

public struct MainTypesView: View {
    @State public var start: String = ""
    @State var location: Situation = Situation.none
    @State var showFailSuccess: Bool = false
    
    public init(){}
    
    public var body: some View {
        
        VStack(alignment: .leading) {
            VStack {
                Text("Main Types")
                    .font(.custom("American Typewriter", size: 50))
                    .foregroundColor(Color.orange)
                Text("Here are some of the most used types in Swift:")
                    .font(.custom("American Typewriter", size: 25 ))
                    .foregroundColor(Color.white)
                    .padding(.vertical, 100)
                
                HStack {
                    Text("Character")
                        .font(.custom("American Typewriter", size: 25))
                        .foregroundColor(Color.purple)
                    Text(" - a 16-bit Unicode character")
                        .font(.custom("American Typewriter", size: 20))
                        .foregroundColor(Color.white)
                    Text(" - I.e.: 'a', 'b'")
                        .font(.custom("American Typewriter", size: 20))
                        .foregroundColor(Color.yellow)
                    
                }.padding(.vertical, 25)
                
                HStack {
                    Text("String")
                        .font(.custom("American Typewriter", size: 25))
                        .foregroundColor(Color.purple)
                    Text(" - represents textual data")
                        .font(.custom("American Typewriter", size: 20))
                        .foregroundColor(Color.white)
                    Text(" - I.e.: 'hello world!' ")
                        .font(.custom("American Typewriter", size: 20))
                        .foregroundColor(Color.yellow)
                    
                }.padding(.vertical, 25)
                
                HStack {
                    Text("Int")
                        .font(.custom("American Typewriter", size: 25))
                        .foregroundColor(Color.purple)
                    Text(" - an integer number")
                        .font(.custom("American Typewriter", size: 20))
                        .foregroundColor(Color.white)
                    Text(" - I.e.: 1, -1")
                        .font(.custom("American Typewriter", size: 20))
                        .foregroundColor(Color.yellow)
                    
                }.padding(.vertical, 25)
                
                HStack {
                    Text("Float")
                        .font(.custom("American Typewriter", size: 25))
                        .foregroundColor(Color.purple)
                    Text(" - represents 32-bit floating-point number")
                        .font(.custom("American Typewriter", size: 20))
                        .foregroundColor(Color.white)
                    Text(" - I.e.: 1.3, -1.3")
                        .font(.custom("American Typewriter", size: 20))
                        .foregroundColor(Color.yellow)
                    
                }.padding(.vertical, 25)
                
                HStack {
                    Text("Double")
                        .font(.custom("American Typewriter", size: 25))
                        .foregroundColor(Color.purple)
                    Text(" - represents 64-bit floating-point number")
                        .font(.custom("American Typewriter", size: 20))
                        .foregroundColor(Color.white)
                    Text(" - I.e.: 3.14159")
                        .font(.custom("American Typewriter", size: 20))
                        .foregroundColor(Color.yellow)
                    
                }.padding(.vertical, 25)
                
                HStack {
                    Text("Bool")
                        .font(.custom("American Typewriter", size: 25))
                        .foregroundColor(Color.purple)
                    Text(" - Any of two values: true or false")
                        .font(.custom("American Typewriter", size: 20))
                        .foregroundColor(Color.white)
                    HStack {
                        Text(" - I.e.: ")
                            .font(.custom("American Typewriter", size: 20))
                            .foregroundColor(Color.yellow)
                        Text("true")
                            .font(.custom("American Typewriter", size: 20))
                            .foregroundColor(Color.pink)
                        Text("or")
                            .font(.custom("American Typewriter", size: 20))
                            .foregroundColor(Color.yellow)
                        Text("false")
                            .font(.custom("American Typewriter", size: 20))
                            .foregroundColor(Color.pink)
                    }
                    
                    
                }.padding(.vertical, 25)
                
            }
            
            
        }.padding(.horizontal, 100)
        .padding(.vertical, 100)
        
    }
    
}
