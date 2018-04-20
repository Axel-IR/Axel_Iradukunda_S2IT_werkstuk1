//
//  Persoon.swift
//  Axel_Iradukunda_S2IT_werkstuk1
//
//  Created by student on 20/04/18.
//  Copyright © 2018 student. All rights reserved.
//
import Foundation
import UIKit

class Persoon:NSObject{
    var naam:String
    var voornaam:String
    var foto:UIImage
    var adres:String
    var gpscoordinaten:String
    var telefoonnummer:String
    

    init(naam:String,voornaam:String,foto:UIImage,adres:String,gpscoordinaten:String,telefoonnummer:String) {
        self.naam=naam
        self.voornaam=voornaam
        self.foto=foto
        self.adres=adres
        self.gpscoordinaten=gpscoordinaten
        self.telefoonnummer=telefoonnummer
    }
}
