//
//  MainView.swift
//  Sushi
//
//  Created by Diego Rodriguez on 27/8/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            SushiView().tabItem {
                Label("Sushi", systemImage: "fish.circle")
            }
            AboutView().tabItem {
                Label("About", systemImage: "info.circle")
            }
            GalleryView().tabItem {
                Label("Gallery", systemImage: "photo.artframe.circle")
            }
        }
    }
}


#Preview {
    MainView()
}

