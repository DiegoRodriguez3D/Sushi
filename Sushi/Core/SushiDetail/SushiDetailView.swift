//
//  SushiDetailView.swift
//  Sushi
//
//  Created by Diego Rodriguez on 26/8/24.
//

import SwiftUI

struct SushiDetailView: View {
    var item: SushiItem

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ZStack {
                    if let uiImage = ImageHelper.loadImage(named: item.imageName) {
                                        Image(uiImage: uiImage)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(maxWidth: .infinity)
                                            .cornerRadius(10)
                                            .shadow(radius: 10)
                                            .padding()
                                    }

                    VStack {
                        Spacer()

                        HStack {
                            Spacer()

                            Text(item.price + "€")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(4)
                                .foregroundColor(.white)
                                .background(Color.green)
                                .cornerRadius(8)
                        }
                    }
                    .padding()
                }

                Text(item.desc)
                    .font(.body)
                    .padding()

            }
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    SushiDetailView(item: SushiItem(name: "Test", price: "2.99", imageName: "tako-sushi", desc: "This is a test description."))
}
