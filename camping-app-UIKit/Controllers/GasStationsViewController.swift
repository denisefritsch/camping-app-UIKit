//
//  GasStationsViewController.swift
//  pet-project
//
//  Created by Denise Fritsch on 11.09.22.
//

import UIKit
import os.log

class GasStationsViewController: UIViewController {

    private let vm = GasStationListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        Task {
            await showGasStations()
        }
    }

    private func showGasStations() async {
        await vm.showGasStations(url: Constants.Url.tankerkoenigURL)
        print(vm.gasStations)
    }
}
