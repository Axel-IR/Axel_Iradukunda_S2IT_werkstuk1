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
   
    @IBOutlet weak var mijnMapView: MKMapView!
    var coordinaten:Array<String>?
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestAlwaysAuthorization()
        
        locationManager.startUpdatingLocation()
    
        coordinaten=persoon!.gpscoordinaten.components(separatedBy: " ")
        let latitude: Double = Double(coordinaten![0])!
        let longitude: Double = Double(coordinaten![1])!
        
        
        let annotation = MKPointAnnotation()
        annotation.title = persoon!.naam
        annotation.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        self.mijnMapView.addAnnotation(annotation)
        self.mijnMapView.showAnnotations(self.mijnMapView.annotations, animated: true)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
