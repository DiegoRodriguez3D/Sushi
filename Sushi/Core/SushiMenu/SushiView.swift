//
//  ContentView.swift
//  Sushi
//
//  Created by Diego Rodriguez on 26/8/24.
//

import SwiftUI

struct SushiView: View {
    
    @StateObject private var viewModel = SushiViewModel()
    
    var body: some View {
        List(viewModel.items) { item in
            ItemRow(item: item)
        }
        .listStyle(.plain)
        .onAppear {
            viewModel.fetchSushiItems()
        }
    }
}

#Preview {
    SushiView()
}

