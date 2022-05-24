//
//  SixthViewController.swift
//  clBubbles
//
//  Created by thaxz on 18/05/22.
//

import UIKit

class SixthViewController: UIViewController {
    
    @IBOutlet var outP6B1: UIButton!
    @IBOutlet var outP6B2: UIButton!
    @IBOutlet var outP6B3: UIButton!
    @IBOutlet var outP6B4: UIButton!
    var score: Score = Score()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func page6Action(_ sender: UIButton) {
        if sender == outP6B1 {
            outP6B1.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP6B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP6B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP6B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseNatacao += 1
            score.courseMarciais += 1
            score.courseFutebol += 1
            
           
        }
        else if sender == outP6B2 {
            outP6B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP6B2.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP6B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP6B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseVolei += 1
            score.courseCenicas += 1
        }
        else if sender == outP6B3 {
            outP6B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP6B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP6B3.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP6B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseCulinaria += 1
            score.courseDesenho += 1
            score.courseInstrumentos += 1
            
        }
        else if sender == outP6B4 {
            outP6B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP6B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP6B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP6B4.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            score.courseRobotica += 1
            score.courseLinguagem += 1
        }
        print(score)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueNext7" {
            let seventhViewController = segue.destination as! SeventhViewController
            seventhViewController.score = score
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
