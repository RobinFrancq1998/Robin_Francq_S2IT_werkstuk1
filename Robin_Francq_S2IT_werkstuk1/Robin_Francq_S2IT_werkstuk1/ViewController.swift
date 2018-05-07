//
//  ViewController.swift
//  Robin_Francq_S2IT_werkstuk1
//
//  Created by Robin Francq on 7/05/18.
//  Copyright © 2018 Robin Francq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tmpPersoon:Persoon?

    @IBOutlet weak var TestLabel: UILabel!
    @IBOutlet weak var Foto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.TestLabel.text = tmpPersoon?.naam
        self.Foto.image = UIImage(named: (tmpPersoon?.fotoNaam)!)
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
