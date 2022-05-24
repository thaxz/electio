//
//  SecondViewController.swift
//  clBubbles
//
//  Created by thaxz on 17/05/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var outP2B1: UIButton!
    @IBOutlet var outP2B2: UIButton!
    @IBOutlet var outP2B3: UIButton!
    @IBOutlet var outP2B4: UIButton!
    var score: Score = Score()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(score)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func page2Action(_ sender: UIButton) {
        if sender == outP2B1 {
            outP2B1.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP2B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP2B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP2B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseCulinaria += 1
            score.courseDesenho += 1
            score.courseNatacao += 1
            score.courseInstrumentos += 1
            score.courseLinguagem += 1
            print("oi")
        }
        else if sender == outP2B2 {
            outP2B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP2B2.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP2B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP2B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseMarciais += 1
        }
        else if sender == outP2B3 {
            outP2B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP2B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP2B3.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP2B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseRobotica += 1
            score.courseVolei += 1
            score.courseCenicas += 1
        }
        else if sender == outP2B4 {
            outP2B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP2B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP2B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP2B4.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            score.courseFutebol += 1
        }
        print(score)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueNext3" {
            let thirdViewController = segue.destination as! ThirdViewController
            thirdViewController.score = score
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
