//
//  ViewController.swift
//  diceRollGame
//
//  Created by Sungur on 01.10.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let diceNumberOne = arc4random_uniform(6) + 1
        let diceNumberTwo = arc4random_uniform(6) + 1
        
        label.text = "Сумма кубиков равна: \(diceNumberOne + diceNumberTwo)"
        
        leftImageView.image = UIImage(named: "Dice\(diceNumberOne)")
        
        rightImageView.image = UIImage(named: "Dice\(diceNumberTwo)")
    }
    
    
}

