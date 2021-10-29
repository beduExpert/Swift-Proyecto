//
//  SongDTO.swift
//  ReproductorSwift
//
//  Created by Ivan Alejandro Hernandez Sanchez on 25/10/21.
//

import UIKit

struct SongDTO: Codable {
    
    var AlbumImageURL:String
    var Artist:String
    var SongName:String
    var SongURL:String

    /*
    enum CodingKeys:String,CodingKey{
        case ConciergeOption = "ConciergeOption"
        case PvpOption = "PvpOption"
    }
    */
}
