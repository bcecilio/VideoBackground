//
//  ViewController.swift
//  VideoBackground
//
//  Created by Brendon Cecilio on 6/4/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playBackgroundVideo()
    }

    private func playBackgroundVideo() {
        let path = Bundle.main.path(forResource: "coastlineIMG3", ofType: "mp4")
        player = AVPlayer(url: URL(fileURLWithPath: path!))
        player!.actionAtItemEnd = AVPlayer.ActionAtItemEnd.none
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.frame
        playerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        
    }
}

