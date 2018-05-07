//
//  TableViewController.swift
//  Robin_Francq_S2IT_werkstuk1
//
//  Created by Robin Francq on 7/05/18.
//  Copyright © 2018 Robin Francq. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var personen = [
        Persoon(naam: "Vermassen", voornaam: "Jef", fotoNaam: "persoon1", adres: Adres(straat: "Zuitstraat", huisnummer: 72, postcode: "1000", gemeente: "Brussel"), gpsCoordinaat: "50.845932, 4.349570", telefoonNummer: "0497123456"),
        Persoon(naam: "Verminnen", voornaam: "Jos", fotoNaam: "persoon2", adres: Adres(straat: "Mont des Arts", huisnummer: 23, postcode: "1000", gemeente: "Brussel"), gpsCoordinaat: "50.844029, 4.358341", telefoonNummer: "0497999999")
    ]
    
    var books = ["Eating Animals","Animal Farm", "Unweaving the Rainbow", "A Universe from Nothing"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        return personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = personen[indexPath.row].voornaam + " " + personen[indexPath.row].naam
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let nextvc = segue.destination as? ViewController {
            let indexpath = self.tableView.indexPathForSelectedRow!
            nextvc.tmp = self.personen[indexpath.row].naam
        }
    }
    

}
