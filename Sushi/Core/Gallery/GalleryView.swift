//
//  GalleryView.swift
//  Sushi
//
//  Created by Diego Rodriguez on 27/8/24.
//

import SwiftUI

struct GalleryView: View {
    
    @State var photos = [String]()
    @State var isDetailVisible = false
    @State var selectedImage = ""
    
    @EnvironmentObject var dataService: DataService
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Gallery")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding([.top, .horizontal])
            
                GeometryReader { proxy in
                    ScrollView(showsIndicators: false){
                    LazyVGrid (columns: [
                        GridItem(spacing: 10),
                        GridItem(spacing: 10),
                        GridItem(spacing: 10)
                    ], spacing: 10) {
                        ForEach(photos, id:\.self) { image in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: ((proxy.size.width-20)/3))
                                .clipped()
                                .onTapGesture {
                                    selectedImage = image
                                    isDetailVisible.toggle()
                                }
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
        .onAppear {
            photos = dataService.getPhotos()
        }
        .sheet(isPresented: $isDetailVisible, content: {
            GalleryDetailView(selectedImage: $selectedImage, isDetailVisible: $isDetailVisible)
        })
    }
}

#Preview {
    GalleryView()
}
