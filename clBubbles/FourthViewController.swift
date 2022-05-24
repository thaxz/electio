//
//  FourthViewController.swift
//  clBubbles
//
//  Created by thaxz on 17/05/22.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet var outP4B1: UIButton!
    @IBOutlet var outP4B2: UIButton!
    @IBOutlet var outP4B3: UIButton!
    @IBOutlet var outP4B4: UIButton!
    var score: Score = Score()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(score)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func page4Action(_ sender: UIButton) {
        if sender == outP4B1 {
            outP4B1.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP4B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP4B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP4B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            //
            score.courseCulinaria += 1
            score.courseRobotica += 1
        }
        else if sender == outP4B2 {
            outP4B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP4B2.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP4B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP4B4.setImage(UIImage(named: "cardOpcao"), for: .normal)

            score.courseFutebol += 1
            score.courseVolei += 1
            score.courseCenicas += 1
        }
        else if sender == outP4B3 {
            outP4B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP4B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP4B3.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP4B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseDesenho += 1
            score.courseLinguagem += 1
            score.courseNatacao += 1
        }
        else if sender == outP4B4 {
            outP4B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP4B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP4B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP4B4.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            
            score.courseMarciais += 1
            score.courseInstrumentos += 1
            
            
            
        }
        print(score)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueNext5" {
            let fifthViewController = segue.destination as! FifthViewController
            fifthViewController.score = score
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
