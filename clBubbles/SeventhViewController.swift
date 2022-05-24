//
//  SeventhViewController.swift
//  clBubbles
//
//  Created by thaxz on 18/05/22.
//

import UIKit

class SeventhViewController: UIViewController {

    @IBOutlet var outP7B1: UIButton!
    @IBOutlet var outP7B2: UIButton!
    @IBOutlet var outP7B3: UIButton!
    @IBOutlet var outP7B4: UIButton!
    var score: Score = Score()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func page7Action(_ sender: UIButton) {
        if sender == outP7B1 {
            outP7B1.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP7B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP7B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP7B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseDesenho += 1
            score.courseNatacao += 1
            score.courseMarciais += 1
            score.courseFutebol += 1
            score.courseVolei += 1
        }
        else if sender == outP7B2 {
            outP7B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP7B2.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP7B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP7B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseRobotica += 1
        }
        else if sender == outP7B3 {
            outP7B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP7B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP7B3.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP7B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseCulinaria += 1
            score.courseLinguagem += 1
            
         
        }
        else if sender == outP7B4 {
            outP7B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP7B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP7B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP7B4.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            score.courseInstrumentos += 1
            score.courseCenicas += 1
        }
        print(score)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueNext8" {
            let eighthViewController = segue.destination as! EighthViewController
            eighthViewController.score = score
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
