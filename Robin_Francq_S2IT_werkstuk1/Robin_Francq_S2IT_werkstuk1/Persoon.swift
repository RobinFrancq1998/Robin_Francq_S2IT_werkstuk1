//
//  Persoon.swift
//  Robin_Francq_S2IT_werkstuk1
//
//  Created by Robin Francq on 6/05/18.
//  Copyright © 2018 Robin Francq. All rights reserved.
//

// Referentie voor het gebruiken van "coordinate" in de klasse Peroon
// Link: https://www.raywenderlich.com/160517/mapkit-tutorial-getting-started
/**
 * Copyright (c) 2017 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Foundation
import MapKit

class Persoon: NSObject, MKAnnotation {

    var naam: String
    var voornaam: String
    var fotoNaam: String
    var adres: Adres
    var coordinate: CLLocationCoordinate2D
    var telefoonNummer: String
    
    init(naam: String, voornaam: String, fotoNaam: String, adres: Adres, coordinate: CLLocationCoordinate2D, telefoonNummer: String){
        self.naam = naam
        self.voornaam = voornaam
        self.fotoNaam = fotoNaam
        self.adres = adres
        self.coordinate = coordinate
        self.telefoonNummer = telefoonNummer
    }
    
    var subtitle: String? {
        return voornaam + " " + naam
    }
}
