//
//  Modelos.swift
//  MyApp
//
//  Created by Jan Zelaznog on 11/10/21.
//

import Foundation

struct Account {
    let user: String
    let pass: String
}

struct Registered {
  let user1: Account = Account(user: "ricardo@bedu.org", pass: "Password10")
}

struct Track {
    let title: String
    let artist: String?
    let album: String?
    let song_id: String
    let genre: String?
    let duration: String?
}

let misTracks = [Track(title:"Like A Rolling Stone", artist:"Bob Dylan", album:"", song_id:"1", genre:"Folk rock", duration:nil),
                 Track(title:"Walk On The Wild Side", artist:"Lou Reed", album:"", song_id:"2", genre:nil, duration:nil),
                 Track(title:"Hey Joe", artist:"The jimi Hendrix Experience", album:"", song_id:"3", genre:nil, duration:nil),
                 Track(title:"Piece Of My Heart", artist:"Big Brother & The Holding Company", album:"", song_id:"4", genre:nil, duration:nil),
                 Track(title:"Blowin' In The Wind", artist:"Bob Dylan", album:"", song_id:"5", genre:nil, duration:nil),
                 Track(title:"I Heard It Through The Grapevine", artist:"Creedence Clearwater Revival", album:"", song_id:"6", genre:nil, duration:nil),
                 Track(title:"Cry Baby", artist:"janis joplin", album:"", song_id:"7", genre:nil, duration:nil),
                 Track(title:"Me And Bobby Mcgee", artist:"janis joplin", album:"", song_id:"8", genre:"Country", duration:nil)]
