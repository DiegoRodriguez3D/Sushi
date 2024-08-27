//
//  AddSushiView.swift
//  Sushi
//
//  Created by Diego Rodriguez on 27/8/24.
//

import SwiftUI
import PhotosUI

struct AddSushiView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject private var viewModel = AddSushiViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Image")) {
                    if let imageData = viewModel.imageData, let uiImage = UIImage(data: imageData) {
                        Image(uiImage: uiImage)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .cornerRadius(10)
                    }

                    PhotosPicker(selection: $viewModel.selectedImage, matching: .images) {
                        Text("Select Image")
                    }
                    .onChange(of: viewModel.selectedImage) { previousItem, newItem in
                        Task {
                            await viewModel.loadImage(from: newItem)
                        }
                    }
                }
                
                Section(header: Text("Sushi Details")) {
                    TextField("Name", text: $viewModel.name)
                    TextField("Price", text: $viewModel.price)
                        .keyboardType(.decimalPad)
                    TextField("Description", text: $viewModel.desc)
                }
                
                Button("Add Sushi") {
                    viewModel.addSushi()
                    dismiss()
                }
                .disabled(!viewModel.isFormValid())
            }
            .navigationTitle("Add New Sushi")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}
