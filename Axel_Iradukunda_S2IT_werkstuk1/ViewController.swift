//
//  ViewController.swift
//  Axel_Iradukunda_S2IT_werkstuk1
//
//  Created by student on 17/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var volledigeNaam: UILabel!
    @IBOutlet weak var adres: UILabel!
    @IBOutlet weak var gpsCoordinaten: UILabel!
    @IBOutlet weak var telefoonNummer: UILabel!
    @IBOutlet weak var foto: UIImageView!
    var persoon:Persoon?
    var Personen:Array<Persoon>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        foto.image=persoon!.foto
        
        volledigeNaam.text="\(persoon!.naam)  \(persoon!.voornaam)"
        adres.text=persoon!.adres
        gpsCoordinaten.text=persoon!.gpscoordinaten
        telefoonNummer.text=persoon!.telefoonnummer
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fotoSegue"{
            let nextVC=segue.destination as! ViewControllerFoto
            nextVC.persoon=persoon
        }else if segue.identifier == "mapsSegue"{            
            let nextV=segue.destination as! ViewControllerMaps
            nextV.persoon=persoon          
          
        }
       
  
    
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

