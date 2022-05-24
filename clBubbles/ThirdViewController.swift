//
//  ThirdViewController.swift
//  clBubbles
//
//  Created by thaxz on 17/05/22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet var outP3B1: UIButton!
    @IBOutlet var outP3B2: UIButton!
    @IBOutlet var outP3B3: UIButton!
    @IBOutlet var outP3B4: UIButton!
    var score: Score = Score()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(score)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func page3Action(_ sender: UIButton) {
        if sender == outP3B1 {
            outP3B1.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP3B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP3B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP3B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            
            score.courseLinguagem += 1
        }
        else if sender == outP3B2 {
            outP3B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP3B2.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP3B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP3B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseRobotica += 1
            score.courseCulinaria += 1
            
        }
        else if sender == outP3B3 {
            outP3B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP3B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP3B3.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP3B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseNatacao += 1
            score.courseMarciais += 1
            score.courseFutebol += 1
            score.courseVolei += 1
        }
        else if sender == outP3B4 {
            outP3B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP3B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP3B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP3B4.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            score.courseInstrumentos += 1
            score.courseDesenho += 1
            score.courseCenicas += 1
            
            
        }
        print(score)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueNext4" {
            let fourthViewController = segue.destination as! FourthViewController
            fourthViewController.score = score
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
