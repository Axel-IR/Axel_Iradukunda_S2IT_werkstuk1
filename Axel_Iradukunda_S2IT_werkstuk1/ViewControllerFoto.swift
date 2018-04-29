//
//  ViewControllerFoto.swift
//  Axel_Iradukunda_S2IT_werkstuk1
//
//  Created by student on 27/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewControllerFoto: UIViewController {

    @IBOutlet weak var fotoFullScreen: UIImageView!
    var persoon:Persoon?
    override func viewDidLoad() {
        super.viewDidLoad()
        fotoFullScreen.image=persoon!.foto
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
