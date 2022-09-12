//
//  TabBarViewController.swift
//  pet-project
//
//  Created by Denise Fritsch on 11.09.22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        let viewController1 = UINavigationController(rootViewController: MapViewController())
        let viewController2 = UINavigationController(rootViewController: GasStationsViewController())
        let viewController3 = UINavigationController(rootViewController: FavoritesViewController())
        let viewController4 = UINavigationController(rootViewController: AddLocationViewController())
        let viewController5 = UINavigationController(rootViewController: ProfileSettingsViewController())

        viewController1.tabBarItem.image = UIImage(systemName: "map")
        viewController2.tabBarItem.image = UIImage(systemName: "fuelpump")
        viewController3.tabBarItem.image = UIImage(systemName: "heart.fill")
        viewController4.tabBarItem.image = UIImage(systemName: "plus.square")
        viewController5.tabBarItem.image = UIImage(systemName: "gearshape")

        viewController1.title = "Map"
        viewController2.title = "Fuel"
        viewController3.title = "Favorites"
        viewController4.title = "Add"
        viewController5.title = "Settings"

        tabBar.tintColor = .label

        setViewControllers([viewController1,viewController2,viewController3,viewController4,viewController5], animated: true)
    }


}

