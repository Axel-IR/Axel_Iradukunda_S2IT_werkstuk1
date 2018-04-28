//
//  ViewControllerMaps.swift
//  Axel_Iradukunda_S2IT_werkstuk1
//
//  Created by student on 28/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit

class ViewControllerMaps: UIViewController, MKMapViewDelegate {
  var locationManager = CLLocationManager()
    var persoon:Persoon?
    var longitude:Double = 0
    var latitude:Double = 0
    var coordinaten:Array<String> = []
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestAlwaysAuthorization()
        
        locationManager.startUpdatingLocation()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        coordinaten=persoon!.gpscoordinaten.components(separatedBy: " ")
        latitude=Double(coordinaten[0])!
        longitude=Double(coordinaten[1])!
        print(latitude)
        print(longitude)
        let center = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: center, span: span)
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
