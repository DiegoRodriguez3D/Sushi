//
//  ContentView.swift
//  Sushi
//
//  Created by Diego Rodriguez on 26/8/24.
//

import SwiftUI
import SwiftData

struct SushiView: View {

    @State private var showingAddSushiView = false
    @StateObject private var viewModel: SushiViewModel
    
    @EnvironmentObject var dataService: DataService

    init() {
        _viewModel = StateObject(wrappedValue: SushiViewModel())
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Sushi App")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding([.top, .horizontal])

                List(viewModel.items) { item in
                    NavigationLink(destination: SushiDetailView(viewModel: SushiDetailViewModel(item: item, dataService: viewModel.dataService))) {
                        ItemRow(item: item)
                    }
                    .listRowSeparator(.hidden)
                    .listRowInsets(.none)
                    .listRowSpacing(1)
                }
                .listStyle(.plain)
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
                AddSushiView(
                    viewModel: AddSushiViewModel(dataService: viewModel.dataService),
                    sushiViewModel: viewModel
                )
                .modelContainer(for: [SushiItem.self])
            }
            .onAppear{
                viewModel.dataService = dataService
                viewModel.fetchSushiItems()
            }
        }
    }
}

#Preview {
    let modelContainer = try! ModelContainer(for: SushiItem.self)
    
    return SushiView()
        .modelContainer(for: [SushiItem.self])
}
