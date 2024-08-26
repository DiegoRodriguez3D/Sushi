//
//  SushiItem.swift
//  Sushi
//
//  Created by Diego Rodriguez on 26/8/24.
//

import Foundation

struct SushiItem: Identifiable {
    var id: UUID = UUID() //Asigna un id único a cada item
    var name: String
    var price: String
    var imageName: String
}
