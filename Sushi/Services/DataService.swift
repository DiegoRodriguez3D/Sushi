//
//  DataService.swift
//  Sushi
//
//  Created by Diego Rodriguez on 26/8/24.
//

import Foundation
import SwiftData
import SwiftUI

class DataService: ObservableObject {
    
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
    
    func deleteSushi(_ sushi: SushiItem) {
        context.delete(sushi)
        do {
            try context.save()
        } catch {
            print("Error deleting sushi: \(error)")
        }
    }
    
    //Obtiene fotos de muestra desde la carpeta assets del proyecto
    func getPhotos() -> [String] {
        return ["gallery1", "gallery2", "gallery3", "gallery4", "gallery5", "gallery6", "gallery7", "gallery8", "gallery9", "gallery10", "gallery11"]
    }

    func populateInitialDataIfNeeded() {
        let fetchRequest = FetchDescriptor<SushiItem>()
        
        do {
            let sushiItems = try context.fetch(fetchRequest)
            if sushiItems.isEmpty {
                let initialSushiItems = [
                    ("Maki-Zushi", "5.99", "makizushi", "This is a type of Japanese sushi roll. The word “maki rolls” refers to the word “to roll” while “zushi” is the formed word for sushi. This type of sushi is famous outside Japan. The rice in this sushi is rolled inside toasted dried seaweed which in Japan cuisine is called “nori” that’s why it is often called “norisushi”. The fillings in a rolled sushi can be fatter with 2-3 ingredients inside or it can be thinner one ingredient inside. When rolled, this sushi is cut in bite-sized pieces and often dipped in soy sauce or with wasabi."),
                    ("Gunkan maki", "4.99", "gunkan-maki", "It is a traditional type of sushi that is commonly known in Japan as battleship maki. It consists of the basic ingredients of rice and nori or seaweed. It is topped with fresh salmon eggs or ikura in Japanese and smaller green flying fish eggs or wasabi tobiko. The word “gunkan”, when translated in English, means battleship. Once you have seen this type of sushi you will understand why it was called battleship because it is shaped a bit like a tasty little boat. To make gunkan maki, nori is pressed and dried into a paper-like sheet and then wrapped around the base of rice to form an oval shape that will hold the fish roe or fish eggs on top. The texture of this sushi is crunchy and has a bit of mild smoky salty taste."),
                    ("Temaki", "2.99", "temaki", "This is the type of sushi that is also called as “hand roll”. As with other types of sushi, it also comprises of rice and nori but this time the nori is rolled like a cone wrapped around the rice and the fillings. This fancy-looking cone sushi is great in parties wherein you can serve it on a platter."),
                    ("Narezushi", "4.99", "narezushi", "This type of sushi is referred to as japan’s original sushi. Narezushi is fermented sushi. Centuries ago, fermented rice is used to preserve the fish but only the fish was eaten and the rice was thrown away. This practice died in Edo—era. Now, modern varieties include a combination of lactate fermentation of fish and rice is eaten together. It takes time to get accustomed to the taste of narezushi because of its strong smell and a mouth twisting sour taste. However, it is still considered a household staple and a source of protein."),
                    ("Nigiri", "4.99", "nigiri", "In Japanese, Nigiri means two fingers which refer to the serving of rice portion in this sushi. Unlike maki, nigiri is not rolled but it is a thinly sliced of raw or cooked fish atop vinegary rice. Wasabi or small strips of nori are usually placed in between the fish and the rice."),
                    ("Oshizushi", "6.99", "oshizushi", "Originated from Osaka, this type of sushi means “pressed sushi” or “box sushi”. It is the oldest form of sushi that was created using the old method of preserving fish that was packed tightly in a box with fermented rice. Presently, a wooden mold called oshibako is used to form this sushi."),
                    ("Sasazushi", "3.99", "sasazushi", "A type of sushi made in sushi rice that is topped with mountain vegetables and fish pressed on a bamboo leaf. This type of sushi originated in Tomikura and was first prepared for the famous warlord from this region. To this date, Tomikura still cooks and eat this kind of sushi and offers it to customers all over Japan with richer color and ingredients."),
                    ("Kakinoha-zushi", "3.99", "kakinoha-zushi", "A type of sushi that means “leaf of the persimmon sushi” because it uses the persimmon leaf to wrap the sushi. The leaf itself is not edible and only used as a wrap. This type of pressed sushi can be found around Japan but most notably in Nara."),
                    ("Temari Sushi", "3.99", "temari-sushi", "It is a type of sushi that when translated in English means literally a “hand ball”. Temari is an embroidered ball that was used as a toy but to this day, it is used more as decorative ornaments in the house. Temari sushi was named after this Temari balls which resembles its round shape and its colorful appearance. It comprises of rounded sushi rice and on top of it are the ingredients of your choice."),
                    ("Chirashizushi", "3.99", "chirashizushi", "This type of sushi is means “scattered sushi”. It is probably the most common sushi served in Japan. Basically, it is sushi rice served in a plate or sushi bowl with different ingredients and colorful garnishes use as toppings. It is cooked for special celebrations and festivals."),
                    ("Inari-zushi", "5.99", "inari-zushi", "It is a type of sushi that is rice balls stuffed in seasoned Aburaage or tofu pouches. The Aburaage is deep-fried and has a slightly spongy texture. It also comes in a sweet seasoning that gives a good compliment with the rice balls. Inari-sushi is best in picnic lunches as it can be eaten right by the hand.")
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
