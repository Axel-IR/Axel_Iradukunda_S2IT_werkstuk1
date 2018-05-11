//
//  ViewControllerMainMap.swift
//  Axel_Iradukunda_S2IT_werkstuk1
//
//  Created by student on 30/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit
class ViewControllerMainMap: UIViewController,MKMapViewDelegate	 {
    @IBOutlet weak var mijnMapView: MKMapView!
 var locationManager = CLLocationManager()
 var Personen:Array<Persoon>?
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
        let Persoon1 = Persoon.init(naam: "Skywalker", voornaam: "Anakin", foto: #imageLiteral(resourceName: "Anakin"), adres: "Belgiëplein 1 1020 Brussel", gpscoordinaten: "50.900248 4.338791", telefoonnummer: "02 474 82 77")
        let Persoon2 = Persoon.init(naam: "Minch", voornaam: "Yoda", foto: #imageLiteral(resourceName: "yoda"), adres: "Belgiëplein 1 1020 Brussel", gpscoordinaten: "50.900536 4.336562", telefoonnummer: "02 474 82 77")
        
        Personen=[Persoon1,Persoon2]
        
        for persona in Personen! {
            let annotation = MKPointAnnotation()
            annotation.title = persona.naam
            var coord:Array<String> = persona.gpscoordinaten.components(separatedBy: " ")
            let lat: Double = Double(coord[0])!
            let long: Double = Double(coord[1])!
            
            annotation.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: long)
            self.mijnMapView.addAnnotation(annotation)
            
        }
        
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        
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
