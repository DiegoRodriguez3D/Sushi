//
//  SushiDetailViewModel.swift
//  Sushi
//
//  Created by Diego Rodriguez on 27/8/24.
//

import SwiftUI

class SushiDetailViewModel: ObservableObject {
    @Published var item: SushiItem

    private var dataService: DataService

    init(item: SushiItem, dataService: DataService) {
        self.item = item
        self.dataService = dataService
    }

    func deleteSushi() {
        dataService.deleteSushi(item)
    }
}
