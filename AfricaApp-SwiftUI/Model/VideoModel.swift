//
//  VideoModel.swift
//  AfricaApp-SwiftUI
//
//  Created by Rami Ounifi on 8/2/2021.
//

import Foundation
struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed proprty
    var thumbnail: String {
        "video-\(id)"
    }
}
