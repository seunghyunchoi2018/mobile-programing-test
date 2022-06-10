//
//  ViewController.swift
//  MoviePlayer
//
//  Created by 203a05 on 2022/05/27.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPlayInternalMovie(_ sender: UIButton) {
        let filePath:String? = Bundle.main.path(forResource: "FastTyping", ofType: "mp4")
        let url = NSURL(fileURLWithPath: filePath!)
        playVideo(url: url)
        
    }
    @IBAction func btnPlayerExternalMoive(_ sender: UIButton) {
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/e38auz050w2mvud/FireWorks.mp4")!
        playVideo(url: url)
        
    }
    private func playVideo(url: NSURL) {
        let playerController = AVPlayerViewController()
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        self.present(playerController, animated: true) {
            player.play()
        }
            
    }
}

