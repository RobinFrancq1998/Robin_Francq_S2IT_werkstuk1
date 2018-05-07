//
//  ViewController.swift
//  TestProject
//
//  Created by Robin Francq on 7/05/18.
//  Copyright © 2018 Robin Francq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FotoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        FotoView.image = UIImage(named: "persoon1")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

