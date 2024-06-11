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
        VideoPlayerView(videoURL: URL(string: "https://dev-tgls.zepeto.io/DEV_ZEPETO_LIVE/22011_devTrans.m3u8?txSecret=8abab19f72276dce0a72a666f9d433c7&txTime=66669F21&request_llhls=1")!)
    }
}

#Preview {
    ContentView()
}
