//
//  SushiViewModel.swift
//  Sushi
//
//  Created by Diego Rodriguez on 27/8/24.
//

import SwiftUI
import SwiftData

class SushiViewModel: ObservableObject {
    @Published var items: [SushiItem] = []
    var dataService: DataService!

    func fetchSushiItems() {
        guard let dataService = dataService else {
            print("DataService not initialized.")
            return
        }
        items = dataService.getSushi()
    }
}
