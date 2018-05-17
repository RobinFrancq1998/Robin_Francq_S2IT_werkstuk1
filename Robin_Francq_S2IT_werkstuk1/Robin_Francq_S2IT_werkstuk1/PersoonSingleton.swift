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
            Persoon(naam: "Vermassen", voornaam: "Jef", fotoNaam: "persoon1", adres: Adres(straat: "Zuitstraat", huisnummer: 72, postcode: "1000", gemeente: "Brussel"), coordinate: CLLocationCoordinate2D(latitude: 50.845932, longitude: 4.349570), telefoonNummer: "0497123456"),
            Persoon(naam: "Verminnen", voornaam: "Jos", fotoNaam: "persoon2", adres: Adres(straat: "Mont des Arts", huisnummer: 23, postcode: "1000", gemeente: "Brussel"), coordinate: CLLocationCoordinate2D(latitude: 50.844029, longitude: 4.358341), telefoonNummer: "0497999999"),
            Persoon(naam: "Vandebotermet", voornaam: "Marieke", fotoNaam: "persoon3", adres: Adres(straat: "Herdebeekstraat", huisnummer: 125, postcode: "1700", gemeente: "Dilbeek"), coordinate: CLLocationCoordinate2D(latitude: 50.833654, longitude: 4.231732), telefoonNummer: "0497505050")
        ]
    }
    
    public func getPersonen() -> [Persoon]{
        return self.personen
    }
}
