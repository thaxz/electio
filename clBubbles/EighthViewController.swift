//
//  EighthViewController.swift
//  clBubbles
//
//  Created by thaxz on 18/05/22.
//

import UIKit

class EighthViewController: UIViewController {
    
    @IBOutlet var outP8B1: UIButton!
    @IBOutlet var outP8B2: UIButton!
    @IBOutlet var outP8B3: UIButton!
    @IBOutlet var outP8B4: UIButton!
    var score: Score = Score()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func page8Action(_ sender: UIButton) {
        if sender == outP8B1 {
            outP8B1.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP8B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP8B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP8B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseRobotica += 1
        }
        else if sender == outP8B2 {
            outP8B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP8B2.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP8B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP8B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseCulinaria += 1
            score.courseInstrumentos += 1
            score.courseLinguagem += 1
            
            
        }
        else if sender == outP8B3 {
            outP8B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP8B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP8B3.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            outP8B4.setImage(UIImage(named: "cardOpcao"), for: .normal)
            score.courseDesenho += 1
            score.courseCenicas += 1
        }
        else if sender == outP8B4 {
            outP8B1.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP8B2.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP8B3.setImage(UIImage(named: "cardOpcao"), for: .normal)
            outP8B4.setImage(UIImage(named: "cardOpcaoSelected"), for: .normal)
            score.courseNatacao += 1
            score.courseMarciais += 1
            score.courseFutebol += 1
            score.courseVolei += 1
        }
        print(score)
    }
    
    @IBAction func calculateTest(_ sender: UIButton) {
        if score.courseCulinaria > score.courseDesenho && score.courseCulinaria > score.courseRobotica && score.courseCulinaria > score.courseNatacao && score.courseCulinaria > score.courseMarciais && score.courseCulinaria > score.courseInstrumentos && score.courseCulinaria > score.courseFutebol && score.courseCulinaria > score.courseVolei && score.courseCulinaria > score.courseCenicas && score.courseCulinaria > score.courseLinguagem {
            score.courseResult = "culinaria"
        }
        else if score.courseDesenho > score.courseCulinaria && score.courseDesenho > score.courseRobotica && score.courseDesenho > score.courseNatacao && score.courseDesenho > score.courseMarciais && score.courseDesenho > score.courseInstrumentos && score.courseDesenho > score.courseFutebol && score.courseDesenho > score.courseVolei && score.courseDesenho > score.courseCenicas && score.courseDesenho > score.courseLinguagem {
            score.courseResult = "desenho"
        }
        else if score.courseRobotica > score.courseCulinaria && score.courseRobotica > score.courseDesenho && score.courseRobotica > score.courseNatacao && score.courseRobotica > score.courseMarciais && score.courseRobotica > score.courseInstrumentos && score.courseRobotica > score.courseFutebol && score.courseRobotica > score.courseVolei && score.courseRobotica > score.courseCenicas && score.courseRobotica > score.courseLinguagem {
            score.courseResult = "robotica"
        }
        else if score.courseNatacao > score.courseCulinaria && score.courseNatacao > score.courseDesenho && score.courseNatacao > score.courseRobotica && score.courseNatacao > score.courseMarciais && score.courseNatacao > score.courseInstrumentos && score.courseNatacao > score.courseFutebol && score.courseNatacao > score.courseVolei && score.courseNatacao > score.courseCenicas && score.courseNatacao > score.courseLinguagem {
            score.courseResult = "natacao"
        }
        else if score.courseMarciais > score.courseCulinaria && score.courseMarciais > score.courseDesenho && score.courseMarciais > score.courseRobotica && score.courseMarciais > score.courseNatacao && score.courseMarciais > score.courseInstrumentos && score.courseMarciais > score.courseFutebol && score.courseMarciais > score.courseVolei && score.courseMarciais > score.courseCenicas && score.courseMarciais > score.courseLinguagem {
            score.courseResult = "marciais"
        }
        else if score.courseInstrumentos > score.courseCulinaria && score.courseInstrumentos > score.courseDesenho && score.courseInstrumentos > score.courseRobotica && score.courseInstrumentos > score.courseNatacao && score.courseInstrumentos > score.courseMarciais && score.courseInstrumentos > score.courseFutebol && score.courseInstrumentos > score.courseVolei && score.courseInstrumentos > score.courseCenicas && score.courseInstrumentos > score.courseLinguagem {
            score.courseResult = "instrumentos"
        }
        else if score.courseFutebol > score.courseCulinaria && score.courseFutebol > score.courseDesenho && score.courseFutebol > score.courseRobotica && score.courseFutebol > score.courseNatacao && score.courseFutebol > score.courseMarciais && score.courseFutebol > score.courseInstrumentos && score.courseFutebol > score.courseVolei && score.courseFutebol > score.courseCenicas && score.courseFutebol > score.courseLinguagem {
            score.courseResult = "futebol"
        }
        else if score.courseVolei > score.courseCulinaria && score.courseVolei > score.courseDesenho && score.courseVolei > score.courseRobotica && score.courseVolei > score.courseNatacao && score.courseVolei > score.courseMarciais && score.courseVolei > score.courseInstrumentos && score.courseVolei > score.courseFutebol && score.courseVolei > score.courseCenicas && score.courseVolei > score.courseLinguagem {
            score.courseResult = "volei"
        }
        else if score.courseCenicas > score.courseCulinaria && score.courseCenicas > score.courseDesenho && score.courseCenicas > score.courseRobotica && score.courseCenicas > score.courseNatacao && score.courseCenicas > score.courseMarciais && score.courseCenicas > score.courseInstrumentos && score.courseCenicas > score.courseFutebol && score.courseCenicas > score.courseVolei && score.courseCenicas > score.courseLinguagem {
            score.courseResult = "cenicas"
        }
        else if score.courseLinguagem > score.courseCulinaria && score.courseLinguagem > score.courseDesenho && score.courseLinguagem > score.courseRobotica && score.courseLinguagem > score.courseNatacao && score.courseLinguagem > score.courseMarciais && score.courseLinguagem > score.courseInstrumentos && score.courseLinguagem > score.courseFutebol && score.courseLinguagem > score.courseVolei && score.courseLinguagem > score.courseCenicas {
            score.courseResult = "linguagem"
        }
        print (score.courseResult)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueShowResult" {
            let ninthViewController = segue.destination as! NinthViewController
            ninthViewController.score = score
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
