//
//  GasStationListViewModel.swift
//  pet-project
//
//  Created by Denise Fritsch on 12.09.22.
//

import Foundation
import os.log

class GasStationListViewModel {

    private (set) var gasStations: [GasStationViewModel] = []

    func showGasStations(url: URL) async {
        do {
            let gasStations = try await WebService().getGasStation(url)
            self.gasStations = gasStations.map(GasStationViewModel.init)
        } catch {
            Logger.functionalityLogger.error("Invalid server response: \(error.localizedDescription)")
        }
    }

}

