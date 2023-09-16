
//  ContentView.swift
//  linkProject
//
//  Created by Hibah Abdullah Alatawi on 17/02/1445 AH.


import SwiftUI
import AVKit


struct SplachScreenView: View {
    
    @State var isEnded : Bool = false
    @State var video: AVPlayer = .init()
    @StateObject  var authService = AuthServiceViewModel()
    
    var body: some View {
        if isEnded{
            OnBoardingView()
        } else{
            VStack {
                VideoPlayer (player: video)
                    .disabled (true)
                    .onAppear {
                        DispatchQueue.main.async {
                            video.play()
                            DispatchQueue.main.asyncAfter(deadline:.now()+4){
                                video.pause()
                                isEnded = true
                            }
                        }
                    }
                
            }.edgesIgnoringSafeArea(.all)
             .onAppear {
               
                    let bundle = Bundle.main.url(forResource: "splash", withExtension: "mp4")
                    if let url = bundle {
                        video = AVPlayer(url: url)
                        print("Found url", url)
                    } else {
                        print("Did not find url")
                    }
             }
        }
    }
    
}

struct SplachScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplachScreenView()
            .preferredColorScheme(.light)
    }
} 
