//
//  SushiItem.swift
//  Sushi
//
//  Created by Diego Rodriguez on 26/8/24.
//

import SwiftData
import Foundation

@Model
class SushiItem {
    var id: UUID
    var name: String
    var price: String
    var imageName: String
    var desc: String

    init(name: String, price: String, imageName: String, desc: String) {
        self.id = UUID()
        self.name = name
        self.price = price
        self.imageName = imageName
        self.desc = desc
    }
}
