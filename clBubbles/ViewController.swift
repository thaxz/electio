//
//  ViewController.swift
//  clBubbles
//
//  Created by thaxz on 05/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var outP1B1: UIButton!
    @IBOutlet var outP1B2: UIButton!
    @IBOutlet var outP1B3: UIButton!
    @IBOutlet var outP1B4: UIButton!
   
    var score: Score = Score()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        printTeste()
    }
    func printTeste (){
        print("teste")
    }
    
    
    @IBAction func page1Action(_ sender: UIButton?) {
        
        if sender == outP1B1 {
            outP1B1.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP1B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP1B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP1B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseCulinaria += 1
            score.courseRobotica += 1
            score.courseNatacao += 1
            score.courseMarciais += 1
            score.courseInstrumentos += 1
            score.courseFutebol += 1
            score.courseVolei += 1
            score.courseCenicas += 1
            print("hi")
        }
        else if sender == outP1B2 {
            outP1B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP1B2.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP1B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP1B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseDesenho += 1
            score.courseLinguagem += 1
        }
        else if sender == outP1B3 {
            outP1B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP1B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP1B3.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP1B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseDesenho += 1
            score.courseLinguagem += 1
        }
        else if sender == outP1B4 {
            outP1B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP1B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP1B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP1B4.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            score.courseCulinaria += 1
            score.courseRobotica += 1
            score.courseNatacao += 1
            score.courseMarciais += 1
            score.courseInstrumentos += 1
            score.courseFutebol += 1
            score.courseVolei += 1
            score.courseCenicas += 1
            score.courseDesenho += 1
            score.courseLinguagem += 1
        }
        print(score)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueNext2" {
            let secondViewController = segue.destination as! SecondViewController
            secondViewController.score = score
        }
    }
}
