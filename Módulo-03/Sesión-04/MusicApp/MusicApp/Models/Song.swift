//
//  Song.swift
//  MusicApp
//
//  Created by Omar Guzmán on 05/10/21.
//  Copyright © 2021 Bedu. All rights reserved.
//

import Foundation

struct Song: Codable {
    let songId: String
    let name: String
    let duration: Double?
    let artist: String?
    let genre: String?
    
    enum CodingKeys: String, CodingKey {
        case songId = "song_id"
        case name
        case duration
        case artist
        case genre
    }
}
