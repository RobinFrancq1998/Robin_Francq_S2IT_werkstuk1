//
//  ViewController2.swift
//  Robin_Francq_S2IT_werkstuk1
//
//  Created by Robin Francq on 12/05/18.
//  Copyright © 2018 Robin Francq. All rights reserved.
//

import UIKit
import MapKit

class ViewController2: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    var manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        manager.requestAlwaysAuthorization()
        
        manager.startUpdatingLocation()
        
        let location = CLLocationCoordinate2D(latitude: 50.852183, longitude: 4.343737)
        let myAnnotation = MyAnnotation(coordinate: location, title: "Barbeton")
        
        self.map.addAnnotation(myAnnotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 60, longitudeDelta: 60)
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
    }
}
