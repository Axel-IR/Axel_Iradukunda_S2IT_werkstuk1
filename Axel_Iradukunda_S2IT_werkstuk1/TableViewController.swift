//
//  TableViewController.swift
//  Axel_Iradukunda_S2IT_werkstuk1
//
//  Created by student on 20/04/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var Personen:Array<Persoon>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       let Persoon1 = Persoon.init(naam: "Skywalker", voornaam: "Anakin", foto: #imageLiteral(resourceName: "Anakin"), adres: "Belgiëplein 1 1020 Brussel", gpscoordinaten: "50.900248 4.338791", telefoonnummer: "02 474 82 77")
        let Persoon2 = Persoon.init(naam: "Minch", voornaam: "Yoda", foto: #imageLiteral(resourceName: "yoda"), adres: "Belgiëplein 1 1020 Brussel", gpscoordinaten: "50.900536 4.336562", telefoonnummer: "02 474 82 77")
        
        Personen=[Persoon1,Persoon2]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (Personen?.count)!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = Personen?[indexPath.row].naam
        cell.detailTextLabel?.text=Personen?[indexPath.row].voornaam
        cell.imageView?.image=Personen?[indexPath.row].foto

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation*/
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC=segue.destination as! ViewController
        
        nextVC.persoon=Personen?[(tableView.indexPathForSelectedRow?.row)!]
        nextVC.Personen=Personen!
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
