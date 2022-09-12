//
//  MapViewController.swift
//  pet-project
//
//  Created by Denise Fritsch on 11.09.22.
//

import CoreLocation
import MapKit
import UIKit

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    var window: UIWindow?
    var mapView: MKMapView!

    //location manager
    var locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // get map view
        self.mapView = getMapView()
        self.view.addSubview(self.mapView!)

        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()

    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            locationManager.stopUpdatingLocation()
            render(location)
        }
    }

    func render(_ location: CLLocation) {
        let coordinate = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.01 , longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)

        mapView.setRegion(region, animated: true)
        addAnnotation(coordinate)
    }

    func addAnnotation(_ coordinate: CLLocationCoordinate2D) {
        let pin = MKPointAnnotation()
        pin.coordinate = coordinate
        mapView.addAnnotation(pin)
    }

    func getMapView() -> MKMapView {
        self.view.backgroundColor = .systemBackground
        let safeAreaInsets: UIEdgeInsets = self.view.safeAreaInsets
        let safeAreaFrame = CGRect(x: safeAreaInsets.left,
                                   y: safeAreaInsets.top,
                                   width: self.view.frame.size.width - safeAreaInsets.left - safeAreaInsets.right,
                                   height:self.view.frame.size.height - safeAreaInsets.top - safeAreaInsets.bottom)
        return MKMapView(frame: safeAreaFrame)
    }

}
