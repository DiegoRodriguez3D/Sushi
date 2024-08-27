//
//  SushiDetailView.swift
//  Sushi
//
//  Created by Diego Rodriguez on 26/8/24.
//

import SwiftUI

struct SushiDetailView: View {
    @StateObject var viewModel: SushiDetailViewModel
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ZStack {
                    if let uiImage = ImageHelper.loadImage(named: viewModel.item.imageName) {
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

                            Text(viewModel.item.price + "€")
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

                Text(viewModel.item.desc)
                    .font(.body)
                    .padding()

            }
        }
        .navigationTitle(viewModel.item.name)
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    viewModel.deleteSushi()
                    dismiss()  // Cerrar la vista después de eliminar
                }) {
                    Image(systemName: "trash")
                        .foregroundColor(.red)
                }
            }
        }
    }
}
