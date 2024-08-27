//
//  AddSushiViewModel.swift
//  Sushi
//
//  Created by Diego Rodriguez on 27/8/24.
//

import SwiftUI
import PhotosUI
import SwiftData

class AddSushiViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var price: String = ""
    @Published var desc: String = ""
    @Published var selectedImage: PhotosPickerItem? = nil
    @Published var imageData: Data? = nil

    private var context: ModelContext

    init(context: ModelContext) {
        self.context = context
    }

    func loadImage(from newItem: PhotosPickerItem?) async {
        guard let newItem = newItem else { return }
        if let data = try? await newItem.loadTransferable(type: Data.self) {
            DispatchQueue.main.async {
                self.imageData = data
            }
        }
    }

    func addSushi() {
        guard let imageData = imageData else { return }
        let imageName = UUID().uuidString // Usamos un UUID único para el nombre de la imagen
        ImageHelper.saveImage(imageData, withName: imageName, resizeTo: CGSize(width: 779, height: 642))


        let newSushi = SushiItem(name: name, price: price, imageName: imageName, desc: desc)
        context.insert(newSushi)

        do {
            try context.save()
        } catch {
            print("Error saving new sushi: \(error)")
        }
    }

    func isFormValid() -> Bool {
        return !name.isEmpty && !price.isEmpty && !desc.isEmpty && imageData != nil
    }
}
