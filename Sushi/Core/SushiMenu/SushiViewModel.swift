//
//  SushiViewModel.swift
//  Sushi
//
//  Created by Diego Rodriguez on 26/8/24.
//

import SwiftUI

class SushiViewModel: ObservableObject {
    @Published var items: [SushiItem] = []
    
    private var dataService = DataService()
    
    func fetchSushiItems() {
        self.items = dataService.getSushi()
    }
}
