//
//  ImageHelper.swift
//  Sushi
//
//  Created by Diego Rodriguez on 27/8/24.
//

import SwiftUI

struct ImageHelper {
    
    static func loadImage(named name: String) -> UIImage? {
        // Intentar cargar la imagen desde el almacenamiento local
        if let localImage = loadLocalImage(named: name) {
            return localImage
        }
        
        // Si no está en el almacenamiento local, intentar cargarla desde los assets
        return UIImage(named: name)
    }
    
    static func saveImage(_ imageData: Data, withName name: String) {
        let fileURL = getDocumentsDirectory().appendingPathComponent(name)
        try? imageData.write(to: fileURL)
    }
    
    private static func loadLocalImage(named name: String) -> UIImage? {
        let fileURL = getDocumentsDirectory().appendingPathComponent(name)
        return UIImage(contentsOfFile: fileURL.path)
    }
    
    private static func getDocumentsDirectory() -> URL {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
}
