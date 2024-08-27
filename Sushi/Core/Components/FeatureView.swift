//
//  FeatureView.swift
//  Sushi
//
//  Created by Diego Rodriguez on 27/8/24.
//

import SwiftUI

struct FeatureView: View {
    let icon: String
    let title: String
    let description: String
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: icon)
                .foregroundColor(.secondary)
                .font(.title2)
                .frame(width: 40, height: 40)
                .padding(.top, 2)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

#Preview {
    FeatureView(
        icon: "fish.circle",
        title: "Sushi",
        description: "Browse and manage a personalized list of your favorite sushi types."
    )
}
