import AVFoundation
public var audioPlayer: AVAudioPlayer?

public func playSoundLoop(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.numberOfLoops = -1
            audioPlayer?.volume = 0.05
            audioPlayer?.play()
        } catch {
            print("ERROR")
        }
    }
}

public func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.numberOfLoops = 2
            audioPlayer?.volume = 0.25
            audioPlayer?.play()
        } catch {
            print("ERROR")
        }
    }
}
