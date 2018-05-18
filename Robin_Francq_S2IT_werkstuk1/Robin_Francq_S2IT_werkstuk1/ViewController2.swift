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
    
    var personen = PersoonSingleton.instance.getPersonen()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        manager.requestAlwaysAuthorization()
        
        manager.startUpdatingLocation()
        
        // self.fillMapWithPersons();
        
        
            let location = CLLocationCoordinate2D(latitude: 50.852183, longitude: 4.343737)
            let myAnnotation = MyAnnotation(coordinate: location, title: "Barbeton")
         
            let location2 = CLLocationCoordinate2D(latitude: 60, longitude: 5)
            let myAnnotation2 = MyAnnotation(coordinate: location2, title: "Barbeton2")
         
            self.map.addAnnotation(myAnnotation)
            self.map.addAnnotation(myAnnotation2)
        
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    private func fillMapWithPersons(){
        for person in self.personen {
            let location = CLLocationCoordinate2D(latitude: person.coordinate.latitude, longitude: person.coordinate.longitude)
            let annotation = MyAnnotation(coordinate: location, title: person.voornaam + " " + person.naam)
            self.map.addAnnotation(annotation)
        }
    }
    */
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
    }
}
