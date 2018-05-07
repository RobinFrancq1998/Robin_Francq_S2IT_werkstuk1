//
//  Persoon.swift
//  Robin_Francq_S2IT_werkstuk1
//
//  Created by Robin Francq on 6/05/18.
//  Copyright © 2018 Robin Francq. All rights reserved.
//

import Foundation

class Persoon {
    
    var naam: String
    var voornaam: String
    var fotoNaam: String
    var adres: Adres
    var gpsCoordinaat: String
    var telefoonNummer: String
    
    init(naam: String, voornaam: String, fotoNaam: String, adres: Adres, gpsCoordinaat: String, telefoonNummer: String){
        self.naam = naam
        self.voornaam = voornaam
        self.fotoNaam = fotoNaam
        self.adres = adres
        self.gpsCoordinaat = gpsCoordinaat
        self .telefoonNummer = telefoonNummer
    }
}
