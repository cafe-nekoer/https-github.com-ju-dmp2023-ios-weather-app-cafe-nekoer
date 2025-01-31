//
//  LocationManger.swift
//  weather app
//
//  Created by Jinglin Li on 2025-01-31.
//

import Foundation
import CoreLocation
//import Observation

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    private let locationManager = CLLocationManager()
    var location: CLLocation?
    
    
    override init() {
        super.init()
        
        locationManager.delegate = self
    }
    
    func requestLocation() {
        if locationManager.authorizationStatus == .notDetermined {
            locationManager.requestWhenInUseAuthorization()
        } else {
            locationManager.requestLocation()
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        if locationManager.authorizationStatus != .denied {
            locationManager.requestLocation()
        }
        }

        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            location = locations.last
        }

        func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
            // Do something in case of error
            print("Error location manager: \(error)")
        }
}
