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
    
    @Environment(\.modelContext) private var context
    
    //Carga la lista de sushi directamente desde SwiftData
    @Query(sort: \SushiItem.name, order: .forward) private var items: [SushiItem]

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
                AddSushiView(context: context)
                    .modelContainer(for: [SushiItem.self])
            }

        }
    }
}

#Preview {
    let modelContainer = try! ModelContainer(for: SushiItem.self)
    
    return SushiView()
        .modelContainer(for: [SushiItem.self])
}
