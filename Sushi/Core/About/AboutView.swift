//
//  AboutView.swift
//  Sushi
//
//  Created by Diego Rodriguez on 27/8/24.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("About")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                    .padding([.top, .horizontal])
                
                Image("sushi-header")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                VStack {
                    Text("Sushi App")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                    
                    + Text(" is your perfect companion for exploring and enjoying sushi. We're committed to providing a user-friendly experience that enhances your culinary journey.")
                }
                .font(.body)
                .padding([.horizontal, .bottom])

                VStack(alignment: .leading, spacing: 10) {
                    Text("Features")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    
                    FeatureView(
                        icon: "fish.circle",
                        title: "Sushi",
                        description: "Browse and manage a personalized list of your favorite sushi types."
                    )
                    
                    Divider()
                    
                    FeatureView(
                        icon: "photo.artframe.circle",
                        title: "Gallery",
                        description: "Enjoy high-quality images that inspire your sushi adventures."
                    )
                }
                .padding()
            }
        }
    }
}

#Preview {
    AboutView()
}
