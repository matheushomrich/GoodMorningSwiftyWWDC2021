//: ## Here you'll have an overview of some of the most used and known Swift Types 

import SwiftUI
import PlaygroundSupport
import AVKit

public struct ContentView: View {
    
    public var body: some View {
        MainTypesView()
            .onAppear{
                playSoundLoop(sound: "music", type: "mpeg")
            }
    }
}

PlaygroundPage.current.setLiveView(ContentView())
