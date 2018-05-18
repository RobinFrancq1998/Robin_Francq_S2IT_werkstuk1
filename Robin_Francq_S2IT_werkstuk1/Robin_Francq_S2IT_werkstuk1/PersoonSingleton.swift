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
            Persoon(naam: "Joseph", voornaam: "Urbanus", fotoNaam: "Urbanus", adres: Adres(straat: "Luisenstraße", huisnummer: 11, postcode: "34119", gemeente: "Kassel"), coordinate: CLLocationCoordinate2D(latitude: 51.313244, longitude: 9.474076), telefoonNummer: "0497123456"),
            Persoon(naam: "Deseure", voornaam: "Eufrazie", fotoNaam: "Eufrasie", adres: Adres(straat: "Calle de Almadén", huisnummer: 25, postcode: "28014", gemeente: "Madrid"), coordinate: CLLocationCoordinate2D(latitude: 40.410940, longitude: -3.693718), telefoonNummer: "0497999999"),
            Persoon(naam: "Cesar", voornaam: "Tripel", fotoNaam: "Cesar", adres: Adres(straat: "شارع إمحمد المقريف", huisnummer: 100, postcode: "10320", gemeente: "Sabha"), coordinate: CLLocationCoordinate2D(latitude: 27.042982, longitude: 14.425556), telefoonNummer: "0497505050"),
            Persoon(naam: "Amedee", voornaam: "DeBij", fotoNaam: "Amedee", adres: Adres(straat: "Legopo", huisnummer: 1, postcode: "10000", gemeente: "Gaborone"), coordinate: CLLocationCoordinate2D(latitude: -24.632757, longitude: 25.914243), telefoonNummer: "0497123000"),
            Persoon(naam: "Nabuko", voornaam: "Donosor", fotoNaam: "Nabuko", adres: Adres(straat: "R. Pedro Álvares Cabral", huisnummer: 706, postcode: "68140-000", gemeente: "Uruará"), coordinate: CLLocationCoordinate2D(latitude: -3.723672, longitude: -53.739332), telefoonNummer: "049797531"),
            Persoon(naam: "Nonkel", voornaam: "Fillemon", fotoNaam: "Nonkel", adres: Adres(straat: "Magazine St", huisnummer: 653, postcode: "37203", gemeente: "Nashville"), coordinate: CLLocationCoordinate2D(latitude: 36.151128, longitude: -86.783060), telefoonNummer: "0497202020"),
            Persoon(naam: "Meester", voornaam: "Kweepeer", fotoNaam: "Kweepeer", adres: Adres(straat: "Ave NW", huisnummer: 10041, postcode: "AB", gemeente: "Edmonton"), coordinate: CLLocationCoordinate2D(latitude: 53.522679, longitude: -113.490950), telefoonNummer: "0498764320")
        ]
    }
    
    public func getPersonen() -> [Persoon]{
        return self.personen
    }
}
