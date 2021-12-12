//
//  ViewController.swift
//  myProject
//
//  Created by Ivan Prokopyev on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lenghtTile: UITextField!
    @IBOutlet weak var widhtTile: UITextField!
    
    @IBOutlet weak var heightWall: UITextField!
    @IBOutlet weak var widhtWall: UITextField!
    
    
    @IBOutlet weak var numberOfTiles: UITextField!
    @IBAction func makeCalculation(_ sender: UIButton) {
        let squareTile =  Float16(lenghtTile.text!)! * Float16(widhtTile.text!)!
        
        let squareWall = Float16(heightWall.text!)! * Float16(widhtWall.text!)!
        
        numberOfTiles.text = "\(squareWall/squareTile)"
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

