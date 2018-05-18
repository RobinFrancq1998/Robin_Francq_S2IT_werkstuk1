//
//  ViewController2.swift
//  Robin_Francq_S2IT_werkstuk1
//
//  Created by Robin Francq on 18/05/18.
//  Copyright © 2018 Robin Francq. All rights reserved.
//

import UIKit
import MapKit

class ViewController2: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    var locationManager = CLLocationManager()
    
    var personen = PersoonSingleton.instance.getPersonen()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        locationManager.requestAlwaysAuthorization()
    
        locationManager.startUpdatingLocation()
        
        self.fillMapWithPersons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100)
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
    }
    
    private func fillMapWithPersons(){
        for person in self.personen {
            let location = CLLocationCoordinate2D(latitude: person.coordinate.latitude, longitude: person.coordinate.longitude)
            
            let annotation = MyAnnotation(coordinate: location, title: person.voornaam + " " + person.naam)
            
            self.map.addAnnotation(annotation)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
