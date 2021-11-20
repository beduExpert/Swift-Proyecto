//
//  DataManager.swift
//  MyApp
//
//  Created by Jan Zelaznog on 06/11/21.
//

import Foundation

class DataManager {
    static func cancionesPorGenero(canciones:[Track]) -> [Track] {
        return canciones.filter { $0.genre != nil }
    }
}
