//
//  SushiViewModel.swift
//  Sushi
//
//  Created by Diego Rodriguez on 26/8/24.
//

import SwiftUI
import SwiftData

class SushiViewModel: ObservableObject {
    @Published var items: [SushiItem] = []
    
    private var dataService: DataService

    init(context: ModelContext) {
        self.dataService = DataService(context: context)
    }
    
    func fetchSushiItems() {
        self.items = dataService.getSushi()
    }
}
