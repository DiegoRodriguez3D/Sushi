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

    var dataService: DataService

    init(dataService: DataService) {
        self.dataService = dataService
        fetchSushiItems()
    }

    func fetchSushiItems() {
        self.items = dataService.getSushi()
    }
}
