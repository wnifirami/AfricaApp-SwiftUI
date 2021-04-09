//
//  VideoPlayerHelper.swift
//  AfricaApp-SwiftUI
//
//  Created by Mac Pro Sam on 4/9/21.
//

import Foundation
import AVKit

var videPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videPlayer?.play()
    }
    return videPlayer!
}
