//
//  DataService.swift
//  Sushi
//
//  Created by Diego Rodriguez on 26/8/24.
//

import Foundation


struct DataService {
    
    func getSushi() -> [SushiItem] {
        return [
            SushiItem(name: "Onigiri", price: "1.99", imageName: "onigiri"),
            SushiItem(name: "Meguro Sushi", price: "5.99", imageName: "meguro-sushi"),
            SushiItem(name: "Tako Sushi", price: "4.99", imageName: "tako-sushi"),
            SushiItem(name: "Avocado Maki", price: "2.99", imageName: "avocado-maki"),
            SushiItem(name: "Tobiko Spicy Maki", price: "4.99", imageName: "tobiko-spicy-maki"),
            SushiItem(name: "Salmon Sushi", price: "4.99", imageName: "salmon-sushi"),
            SushiItem(name: "Hamachi Sushi", price: "6.99", imageName: "hamachi-sushi"),
            SushiItem(name: "Kani Sushi", price: "3.99", imageName: "kani-sushi"),
            SushiItem(name: "Tamago Sushi", price: "3.99", imageName: "tamago-sushi"),
            SushiItem(name: "California Roll", price: "3.99", imageName: "california-roll"),
            SushiItem(name: "Shrimp Sushi", price: "3.99", imageName: "shrimp-sushi"),
            SushiItem(name: "Ikura Sushi", price: "5.99", imageName: "ikura-sushi")
        ]
    }
}
