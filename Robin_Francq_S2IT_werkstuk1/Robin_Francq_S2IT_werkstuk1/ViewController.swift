//
//  ViewController.swift
//  Robin_Francq_S2IT_werkstuk1
//
//  Created by Robin Francq on 7/05/18.
//  Copyright © 2018 Robin Francq. All rights reserved.
//

// Referentie voor "centerMapOnLocation"
// Link: https://www.raywenderlich.com/160517/mapkit-tutorial-getting-started
// => Zie Persoon.swift voor Copyright licentie

import UIKit
import MapKit

class ViewController: UIViewController {
    
    
    var tmpPersoon:Persoon?
    
    @IBOutlet weak var voornaamNaam: UILabel!
    @IBOutlet weak var Foto: UIImageView!
    @IBOutlet weak var straatnaamHuisnummer: UILabel!
    @IBOutlet weak var postcodeGemeente: UILabel!
    @IBOutlet weak var telefoonnummer: UILabel!
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.voornaamNaam.text = (tmpPersoon?.voornaam)! + " " + (tmpPersoon?.naam)!
        self.Foto.image = UIImage(named: (tmpPersoon?.fotoNaam)!)
        self.straatnaamHuisnummer.text = (tmpPersoon?.adres.straat)! + " " + String((tmpPersoon?.adres.huisnummer)!)
        self.postcodeGemeente.text = (tmpPersoon?.adres.postcode)! + " " + (tmpPersoon?.adres.gemeente)!
        self.telefoonnummer.text = (tmpPersoon?.telefoonNummer)!
        
        var latitude = self.tmpPersoon?.coordinate.latitude
        var longitude = self.tmpPersoon?.coordinate.longitude
        
        let initialLocation = CLLocation(latitude: latitude!, longitude: longitude!)
        
        let regionRadius: CLLocationDistance = 1000
        
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                      regionRadius, regionRadius)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        
        centerMapOnLocation(location: initialLocation)
        
        mapView.addAnnotation(tmpPersoon!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        mapView.setRegion(region, animated: true)
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
