//: ## Here you'll have an overview of some of the most used and known Swift Types and also an exercise for you to practice setting a Type for a variable

import SwiftUI
import PlaygroundSupport
import AVKit

public struct ContentView: View {
    
    public var body: some View {
        TypeView()
            .onAppear{
                playSoundLoop(sound: "music", type: "mpeg")
            }
    }
}

PlaygroundPage.current.setLiveView(ContentView())
