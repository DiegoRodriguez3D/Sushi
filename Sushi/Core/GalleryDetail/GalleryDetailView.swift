//
//  GalleryDetailView.swift
//  Sushi
//
//  Created by Diego Rodriguez on 27/8/24.
//

import SwiftUI

struct GalleryDetailView: View {
    @Binding var selectedImage : String
    @Binding var isDetailVisible: Bool
    
    var body: some View {
        
        ZStack {
            Image(selectedImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        isDetailVisible.toggle()
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.gray)
                            .scaleEffect(1)
                    })
                    .padding()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    GalleryDetailView(selectedImage: Binding.constant("gallery1"), isDetailVisible: Binding.constant(true))
}
