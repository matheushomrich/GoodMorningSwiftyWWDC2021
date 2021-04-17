//: ## Here you'll have an overview of how to comment in Swift, you also have an exercise where you have to to comment what's asked in the textfield

import SwiftUI
import PlaygroundSupport
import AVKit

public struct ContentView: View {
    
    public var body: some View {
        CommentView()
            .onAppear{
                playSoundLoop(sound: "music", type: "mpeg")
            }
    }
}

PlaygroundPage.current.setLiveView(ContentView())
