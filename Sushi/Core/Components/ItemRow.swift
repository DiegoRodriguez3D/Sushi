//
//  ItemRow.swift
//  Sushi
//
//  Created by Diego Rodriguez on 26/8/24.
//

import SwiftUI

struct ItemRow: View {
    
    var item: SushiItem
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 70)
                .cornerRadius(10)
            
            Text(item.name)
                .fontWeight(.bold)
            
            Spacer()
            
            Text(item.price + "€")
        }
        .listRowSeparator(.hidden)
    }
}

#Preview {
    ItemRow(item: SushiItem(name: "Test", price: "2.99", imageName: "tako-sushi"))
}
