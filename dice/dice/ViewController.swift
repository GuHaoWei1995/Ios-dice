//
//  ViewController.swift
//  dice
//
//  Created by 谷浩维 on 2021/1/1.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var index1:Int = 0
    var index2:Int = 0
    @IBOutlet weak var diceImageView1: UIImageView!

    @IBOutlet weak var diceImageView2: UIImageView!
    
    
     
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    @IBAction func rollButton(_ sender: UIButton) {
        updateDiceImages()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        
        // Do any additional setup after loading the view.
    }

    func updateDiceImages()  {
        index1 = Int.random(in: 0...5)
        index2 = Int.random(in: 0...5)
        diceImageView1.image = UIImage(named: diceArray[index1])
        diceImageView2.image = UIImage(named: diceArray[index2])
    }
}

