//
//  DataService.swift
//  Sushi
//
//  Created by Diego Rodriguez on 26/8/24.
//

import Foundation
import SwiftData

struct DataService {
    
    let context: ModelContext

    init(context: ModelContext) {
        self.context = context
    }

    func getSushi() -> [SushiItem] {
        let fetchRequest = FetchDescriptor<SushiItem>()
        
        do {
            let sushiItems = try context.fetch(fetchRequest)
            return sushiItems
        } catch {
            print("Error fetching data: \(error)")
            return []
        }
    }

    func saveSushi(name: String, price: String, imageName: String, desc: String) {
        let newItem = SushiItem(name: name, price: price, imageName: imageName, desc: desc)
        context.insert(newItem)

        do {
            try context.save()
        } catch {
            print("Error saving data: \(error)")
        }
    }

    func populateInitialDataIfNeeded() {
        let fetchRequest = FetchDescriptor<SushiItem>()
        
        do {
            let sushiItems = try context.fetch(fetchRequest)
            if sushiItems.isEmpty {
                let initialSushiItems = [
                    ("Onigiri", "1.99", "onigiri", "Traditional Japanese rice ball wrapped in seaweed."),
                    ("Meguro Sushi", "5.99", "meguro-sushi", "Fresh tuna served over a bed of seasoned rice."),
                    ("Tako Sushi", "4.99", "tako-sushi", "Tender octopus on top of seasoned sushi rice."),
                    ("Avocado Maki", "2.99", "avocado-maki", "Creamy avocado wrapped in seaweed and rice."),
                    ("Tobiko Spicy Maki", "4.99", "tobiko-spicy-maki", "Spicy rolls topped with tobiko fish roe."),
                    ("Salmon Sushi", "4.99", "salmon-sushi", "Fresh salmon served over a bed of seasoned rice."),
                    ("Hamachi Sushi", "6.99", "hamachi-sushi", "Yellowtail fish served on top of sushi rice."),
                    ("Kani Sushi", "3.99", "kani-sushi", "Sweet crab meat delicately placed over sushi rice."),
                    ("Tamago Sushi", "3.99", "tamago-sushi", "Sweet Japanese omelette served on sushi rice."),
                    ("California Roll", "3.99", "california-roll", "Classic roll with crab, avocado, and cucumber."),
                    ("Shrimp Sushi", "3.99", "shrimp-sushi", "Cooked shrimp served over sushi rice."),
                    ("Ikura Sushi", "5.99", "ikura-sushi", "Salmon roe served with a touch of wasabi on sushi rice.")
                ]
                
                for (name, price, imageName, desc) in initialSushiItems {
                    saveSushi(name: name, price: price, imageName: imageName, desc: desc)
                }
                
                try context.save()
            }
        } catch {
            print("Error checking or populating initial data: \(error)")
        }
    }
}
