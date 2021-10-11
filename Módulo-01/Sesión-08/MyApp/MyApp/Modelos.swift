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
