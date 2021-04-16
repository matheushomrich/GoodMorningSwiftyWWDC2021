import SwiftUI
import PlaygroundSupport
import AVKit

public struct ContentView: View {
    
    public var body: some View {
        LetView()
            .onAppear{
                playSoundLoop(sound: "music", type: "mpeg")
            }
    }
}

PlaygroundPage.current.setLiveView(ContentView())