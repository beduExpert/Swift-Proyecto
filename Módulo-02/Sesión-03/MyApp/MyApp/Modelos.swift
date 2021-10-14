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
    let artist: String
    let album: String
}

let misTracks = [Track(title:"Like A Rolling Stone", artist:"Bob Dylan", album:""),
                 Track(title:"Walk On The Wild Side", artist:"Lou Reed", album:""),
                 Track(title:"Hey Joe", artist:"The jimi Hendrix Experience", album:""),
                 Track(title:"Piece Of My Heart", artist:"Big Brother & The Holding Company", album:""),
                 Track(title:"Blowin' In The Wind", artist:"Bob Dylan", album:""),
                 Track(title:"I Heard It Through The Grapevine", artist:"Creedence Clearwater Revival", album:""),
                 Track(title:"Cry Baby", artist:"janis joplin", album:""),
                 Track(title:"Me And Bobby Mcgee", artist:"janis joplin", album:""),]
