//
//  ContentView.swift
//  Sushi
//
//  Created by Diego Rodriguez on 26/8/24.
//

import SwiftUI
import SwiftData

struct SushiView: View {

    @StateObject private var viewModel: SushiViewModel

    init(context: ModelContext) {
        _viewModel = StateObject(wrappedValue: SushiViewModel(context: context))
    }

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Sushi App")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding([.top, .horizontal])

                List(viewModel.items) { item in
                    NavigationLink(destination: SushiDetailView(item: item)) {
                        ItemRow(item: item)
                    }
                    .listRowSeparator(.hidden)
                    .listRowInsets(.none)
                    .listRowSpacing(1)
                }
                .listStyle(.plain)
            }
            .onAppear {
                viewModel.fetchSushiItems()
            }
        }
    }
}

#Preview {
    let modelContainer = try! ModelContainer(for: SushiItem.self)
    
    return SushiView(context: modelContainer.mainContext)
           .modelContainer(for: [SushiItem.self])
}
