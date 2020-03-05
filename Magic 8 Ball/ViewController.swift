//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

// Thats me Peter

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    let ballArray = [#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball5")]
    
    var letzteZahl : Int = 99


    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        var zufall = Int.random(in: 0...4)
        while letzteZahl == zufall {
           zufall = Int.random(in: 0...4)
        }
        print(letzteZahl, zufall)
        letzteZahl = zufall
        
        imageView.image = ballArray[zufall]
       
    }
}

