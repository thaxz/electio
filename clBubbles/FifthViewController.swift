//
//  FifthViewController.swift
//  clBubbles
//
//  Created by thaxz on 18/05/22.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet var outP5B1: UIButton!
    @IBOutlet var outP5B2: UIButton!
    @IBOutlet var outP5B3: UIButton!
    @IBOutlet var outP5B4: UIButton!
    var score: Score = Score()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func page5Action(_ sender: UIButton) {
        if sender == outP5B1 {
            outP5B1.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP5B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP5B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP5B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
        
            score.courseCenicas += 1
            score.courseMarciais += 1
            score.courseFutebol += 1
        }
        else if sender == outP5B2 {
            outP5B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP5B2.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP5B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP5B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseLinguagem += 1
            score.courseNatacao += 1
            
        }
        else if sender == outP5B3 {
            outP5B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP5B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP5B3.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP5B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseCulinaria += 1
            score.courseRobotica += 1
            score.courseVolei += 1
        }
        else if sender == outP5B4 {
            outP5B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP5B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP5B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP5B4.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            score.courseDesenho += 1
            score.courseInstrumentos += 1
        print(score)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueNext6" {
            let sixthViewController = segue.destination as! SixthViewController
            sixthViewController.score = score
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
