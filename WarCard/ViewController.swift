//
//  ViewController.swift
//  WarCard
//
//  Created by Neerav Patel on 2018-07-02.
//  Copyright © 2018 Neerav Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Cards Iamge View
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var cpuImageView: UIImageView!
    
    //Scores Label
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    //Score
    var playerScore = 0
    var cpuScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func resetButton(_ sender: Any) {
        playerScore = 0
        cpuScore = 0
        
        playerImageView.image = UIImage(named: "back")
        cpuImageView.image = UIImage(named: "back")
        
        playerScoreLabel.text = String(0)
        cpuScoreLabel.text = String(0)
    }
    
    //Function for Deal Button
    @IBAction func dealButton(_ sender: Any) {
        // Randomize two numbers
        let playerRandomNumber = arc4random_uniform(13) + 2
        let cpuRandomNumber = arc4random_uniform(13) + 2
        
        //print("Player random number is :\(playerRandomNumber)")
        //print("CPU random number is : \(cpuRandomNumber)")
        
        playerImageView.image = UIImage(named: "card\(playerRandomNumber)")
        cpuImageView.image = UIImage(named: "card\(cpuRandomNumber)")
    
        //Compare the two numbers
        if playerRandomNumber > cpuRandomNumber {
            //Update the score
            playerScore += 1
            //Update label
            playerScoreLabel.text = String(playerScore)
            
        }
        else if cpuRandomNumber > playerRandomNumber {
            //Update the score
            cpuScore += 1
            //Update label
            cpuScoreLabel.text = String(cpuScore)
        }
        else if playerRandomNumber == cpuRandomNumber {
            
        }
    }
    
    

}

