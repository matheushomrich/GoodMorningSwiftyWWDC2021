

import SwiftUI
import PlaygroundSupport

public struct SwiftView: View   {
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
            
            Text("Swift is a fantastic way to write software, whether it’s for phones, desktops, servers, or anything else that runs code. It’s a safe, fast, and interactive programming language that combines the best in modern language thinking with wisdom from the wider Apple engineering culture and the diverse contributions from its open-source community. The compiler is optimized for performance and the language is optimized for development, without compromising on either.\n\nSwift is friendly to new programmers. It’s an industrial-quality programming language that’s as expressive and enjoyable as a scripting language. Writing Swift code in a playground lets you experiment with code and see the results immediately, without the overhead of building and running an app.")
                .font(.custom("American Typewriter", size: 25 ))
                .foregroundColor(Color.orange)
        }.padding(.vertical, 100)
        .padding(.horizontal, 50)
    }
}

