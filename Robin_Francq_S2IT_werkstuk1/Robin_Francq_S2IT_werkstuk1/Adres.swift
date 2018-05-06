//
//  Adres.swift
//  Robin_Francq_S2IT_werkstuk1
//
//  Created by Robin Francq on 6/05/18.
//  Copyright © 2018 Robin Francq. All rights reserved.
//

import Foundation

class Adres {
    
    var straat: String
    var huisnummer: Int
    var postcode: String
    var gemeente: String
    
    init(straat: String, huisnummer: Int, postcode: String, gemeente: String){
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
    }
}
