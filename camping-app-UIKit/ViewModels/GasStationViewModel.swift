//
//  GasStationViewModel.swift
//  pet-project
//
//  Created by Denise Fritsch on 12.09.22.
//

import Foundation

struct GasStationViewModel {

    private let gasStation: GasStation

    init(gasStation: GasStation) {
        self.gasStation = gasStation
    }

    var name: String {
        gasStation.name
    }

    var isOpen: Bool {
        gasStation.isOpen
    }
}
