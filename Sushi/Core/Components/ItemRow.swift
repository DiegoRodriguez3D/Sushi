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
            if let uiImage = ImageHelper.loadImage(named: item.imageName) {
                Image(uiImage: uiImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 130, maxHeight: 80)
                    .clipped()
                    .cornerRadius(14)
            }
            
            Spacer()
            
            Text(item.name)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(.black)
            
            Spacer()
        }
        .background(Color(red: 0.988, green: 0.918, blue: 0.906))
        .cornerRadius(14)
    }
}

#Preview {
    ItemRow(item: SushiItem(name: "Test", price: "2.99", imageName: "tako-sushi", desc: "test description"))
}
