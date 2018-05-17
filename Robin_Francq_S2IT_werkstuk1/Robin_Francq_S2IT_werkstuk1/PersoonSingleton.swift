//
//  PersoonSingleton.swift
//  Robin_Francq_S2IT_werkstuk1
//
//  Created by Robin Francq on 17/05/18.
//  Copyright © 2018 Robin Francq. All rights reserved.
//

import Foundation
import MapKit

final class PersoonSingleton {
    static let instance = PersoonSingleton()
    
    private var personen = [Persoon]()
    
    private init(){
        self.personen = [
            Persoon(naam: "Joseph", voornaam: "Urbanus", fotoNaam: "Urbanus", adres: Adres(straat: "Rue des Godins", huisnummer: 31, postcode: "10270", gemeente: "Fresnoy-le-Château"), coordinate: CLLocationCoordinate2D(latitude: 48.209610, longitude: 4.221169), telefoonNummer: "0497123456"),
            Persoon(naam: "Deseure", voornaam: "Eufrazie", fotoNaam: "Eufrasie", adres: Adres(straat: "Calle de Almadén", huisnummer: 25, postcode: "28014", gemeente: "Madrid"), coordinate: CLLocationCoordinate2D(latitude: 40.410940, longitude: -3.693718), telefoonNummer: "0497999999"),
            Persoon(naam: "Cesar", voornaam: "Tripel", fotoNaam: "Cesar", adres: Adres(straat: "شارع إمحمد المقريف", huisnummer: 100, postcode: "10320", gemeente: "Sabha"), coordinate: CLLocationCoordinate2D(latitude: 27.042982, longitude: 14.425556), telefoonNummer: "0497505050")
        ]
    }
    
    public func getPersonen() -> [Persoon]{
        return self.personen
    }
}
