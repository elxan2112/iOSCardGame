//
//  ViewController.swift
//  WarCardGame
//
//  Created by student on 17.11.2020.
//

import UIKit

class ViewController: UIViewController {
    var playerscore = 0
    var cpuscore  = 0
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var CPUCard: UIImageView!
    @IBOutlet weak var action_button: UIButton!
    @IBOutlet weak var PlayerCard: UIImageView!
    @IBOutlet weak var CPUScore: UILabel!
      @IBOutlet weak var PlayerScore: UILabel!
    
    @IBAction func Exit_Button(_ sender: UIButton) {
        exit(0)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //generate values 2-14
    func generateValue()->Int{
        return Int.random(in: 2...14)    }
    
    //function action for Deal button
    @IBAction func DealFunc(_ sender: UIButton) {
       
        var playernumber=generateValue()
        var cpunumber=generateValue()
        PlayerCard.image = UIImage (imageLiteralResourceName: "card\(playernumber)")
        CPUCard.image = UIImage (imageLiteralResourceName: "card\(cpunumber)")
            if playernumber>cpunumber {
                playerscore += 1
                message.text = "Player wins the round"
                PlayerScore.text = String(playerscore)
                CPUScore.text = String(cpuscore)
                if playerscore == 20{
                    message.text = "Player won! If you want to continue, tap to Deal, but if you want to exit tap to X."
                    playerscore = 0
                    cpuscore = 0
                }
            }
            else if playernumber<cpunumber{
                cpuscore += 1
                message.text = "CPU wins the round"
                PlayerScore.text = String(playerscore)
                CPUScore.text = String(cpuscore)
                if cpuscore == 20{
                    message.text = "CPU won! If you want to continue, tap to Deal, but if you want to exit tap to X."
                    playerscore = 0
                    cpuscore = 0
                }
            }
            else {
                playerscore += 0
                cpuscore += 0
                message.text = "DRAW"
                PlayerScore.text = String(playerscore)
                CPUScore.text = String(cpuscore)
            }
    }
}
