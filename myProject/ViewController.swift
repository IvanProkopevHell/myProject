//
//  ViewController.swift
//  myProject
//
//  Created by Ivan Prokopyev on 10.12.2021.
//

import UIKit

final class ViewController: UIViewController {
    
    private var wall = Wall()
    private var tile = Tile()
    
    @IBOutlet weak var lenghtTile: UITextField!
    @IBOutlet weak var widhtTile: UITextField!
    
    @IBOutlet weak var heightWall: UITextField!
    @IBOutlet weak var widhtWall: UITextField!
    
    @IBOutlet weak var numberOfTiles: UITextField!
    @IBAction func makeCalculation(_ sender: UIButton) {
        
        guard let lenghtTile = Float16(lenghtTile.text!) else {return}
        guard let widhtTile = Float16(widhtTile.text!) else {return}
        
        tile.lenght = lenghtTile
        tile.width = widhtTile
        
        let squareTile = tile.lenght * tile.width
        
        guard let heightWall = Float16(heightWall.text!) else {return}
        guard let widhtWall = Float16(widhtWall.text!) else {return}
        
        wall.height = heightWall
        wall.widht = widhtWall
        
        let squareWall = wall.widht * wall.height
        
        numberOfTiles.text = "\(squareWall/squareTile)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

