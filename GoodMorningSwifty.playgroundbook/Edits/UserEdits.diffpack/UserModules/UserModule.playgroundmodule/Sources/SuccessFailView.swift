import SwiftUI

public struct SuccessFailView: View {
    @Binding var start: String
    @Binding var location: Situation
    
    //public init() {}
    
    public var body: some View {
        VStack {
            
            if location == Situation.success {
                VStack {
                    Image(uiImage: #imageLiteral(resourceName: "success.png"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 100)
                        .cornerRadius(20)
                        .padding(.vertical, 30)
                        .background(Color.red)
                }.onAppear {
                    playSound(sound: "success", type: "mp3")
                }
                
            } else if location == Situation.failed {
                VStack {
                    Image(uiImage: #imageLiteral(resourceName: "failed.png"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 135, height: 200)
                        .cornerRadius(20)
                        .padding(.vertical, 30)
                }.onAppear {
                    playSound(sound: "fail", type: "mp3")
                }
            }
        }.frame(width: 100, height: 100, alignment: .center)
        .padding(.horizontal, 200)
        .padding(.vertical, -300)
    }
}

