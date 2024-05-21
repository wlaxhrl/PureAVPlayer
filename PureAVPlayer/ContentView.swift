//
//  ContentView.swift
//  PureAVPlayer
//
//  Created by Anna Lee on 2024/05/20.
//

import SwiftUI
import AVKit

struct VideoPlayerView: UIViewControllerRepresentable {
    
    var videoURL: URL
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let asset = AVAsset(url: videoURL)
        let player = AVPlayer(playerItem: AVPlayerItem(asset: asset))
        let playerController = AVPlayerViewController()
        playerController.player = player
        player.play()
        return playerController
    }
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {}
}

struct ContentView: View {
    
    var body: some View {
        VideoPlayerView(videoURL: URL(string: "https://live-stream-test.zbeta.xyz/live/liveTestAndroid.m3u8")!)//?request_llhls=1")!)
            .frame(height: 300)
    }
}

#Preview {
    ContentView()
}
