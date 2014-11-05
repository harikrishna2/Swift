//
//  ViewController.swift
//  SwiftMapView
//
//  Created by Girish on 11/5/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    var locationManager: CLLocationManager!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView.showsUserLocation = true
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
//        
//        var location = CLLocationCoordinate2D(latitude: 51.50007773, longitude: -0.1246402)
//        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
//        let region = MKCoordinateRegion(center: location, span: span)
//        mapView.setRegion(region, animated: true)
//        
//        let annotation = MKPointAnnotation()
//        annotation.setCoordinate(location)
//        annotation.title = "Big Ben "
//        annotation.subtitle = "London"
//        mapView.addAnnotation(annotation)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
        
        println("Failed to locate")
    }
    func locationManager(manager: CLLocationManager!, didUpdateToLocation newLocation: CLLocation!, fromLocation oldLocation: CLLocation!) {
        
        if newLocation != nil
        {
            println("Latitude = \(newLocation.coordinate.latitude), longitude = \(newLocation.coordinate.longitude)")
        }
    }

}

