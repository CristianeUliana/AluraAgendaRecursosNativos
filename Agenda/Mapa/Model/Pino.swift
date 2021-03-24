//
//  Pino.swift
//  Agenda
//
//  Created by Cristiane Goncalves Uliana on 24/03/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit
import MapKit

class Pino: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var title:String?
    var icon:UIImage?
    var color:UIColor?
    
    init(coordenada:CLLocationCoordinate2D) {
        self.coordinate = coordenada
    }
    
    
    
    

}
