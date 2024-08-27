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
    @State private var showingAddSushiView = false
    
    @Query(sort: \SushiItem.name, order: .forward) private var items: [SushiItem]


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

                List(items) { item in
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
            .toolbar {
                 ToolbarItem(placement: .navigationBarTrailing) {
                     Button(action: {
                         showingAddSushiView = true
                     }) {
                         Image(systemName: "plus")
                     }
                 }
             }
             .sheet(isPresented: $showingAddSushiView) {
                 AddSushiView()
                     .modelContainer(for: [SushiItem.self])
             }
        }
    }
}

#Preview {
    let modelContainer = try! ModelContainer(for: SushiItem.self)
    
    return SushiView(context: modelContainer.mainContext)
           .modelContainer(for: [SushiItem.self])
}
