//
//  myAnnotation.swift
//  MapViewTest
//
//  Created by Robin Francq on 17/05/18.
//  Copyright © 2018 Robin Francq. All rights reserved.
//

import Foundation
import MapKit

class MyAnnotation: NSObject, MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    init(coordinate: CLLocationCoordinate2D, title:String?) {
        self.coordinate = coordinate
        self.title = title
        
    }
}
