//
//  NinthViewController.swift
//  clBubbles
//
//  Created by thaxz on 18/05/22.
//

import UIKit

class NinthViewController: UIViewController {
    @IBOutlet var imageResult: UIImageView!
    @IBOutlet var emojiResult: UILabel!
    @IBOutlet var titleResult: UILabel!
    @IBOutlet var textResult: UILabel!
    var score: Score = Score()
    
    @IBOutlet var imageResultRight: UIImageView!
    @IBOutlet var textResultRight: UILabel!
    @IBOutlet var viewResultRight: UIView!
    @IBOutlet var viewResultLeft: UIView!
    @IBOutlet var textResultLeft: UILabel!
    @IBOutlet var imageResultLeft: UIImageView!
    @IBOutlet var buttonLeft: UIButton!
    @IBOutlet var buttonRight: UIButton!
    @IBOutlet var progressBar: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateResults()
        // a partir daqui é gambiarra
        viewResultLeft.isHidden = true
        buttonLeft.isHidden = true
        let imageRight: String = "resultIdioma"
        let textRight: String = "Estudar idiomas estrangeiros é uma ótima oportunidade para desenvolver a gramática e a conversação, além de auxiliar a socialização e a concentração."
        imageResultRight.image = UIImage(named: imageRight)
        textResultRight.text = textRight
        
        // Do any additional setup after loading the view.
    }
    
    var emojiCourse: String = " "
    var titleCourse: String = " "
    var textCourse: String = " "
    var imageCourse: String = " "
    
    func generateResults() {
        switch (score.courseResult) {
        case "culinaria":
            emojiCourse = "🍴"
            titleCourse = "Culinária"
            textCourse = "Cozinhar exige atenção e ritmo. Assim, o curso de culinária ajuda a desenvolver responsabilidade e senso de cooperação, além de estimular uma relação saudável com os alimentos."
            imageCourse = "resultCulinaria"
        case "desenho":
            emojiCourse = "🖍"
            titleCourse = "Desenho"
            textCourse = "Desenhar desenvolve o conceito de  praticar e não ter medo de errar, sendo um ótimo exercício para explorar a criatividade. Além de auxiliar a percepção visual e coordenação motora."
            imageCourse = "resultDesenho"
        case "robotica":
            emojiCourse = "🤖"
            titleCourse = "Robótica"
            textCourse = "O curso de robótica auxilia a aprimorar os conceitos de várias áreas, como lógica, matemática e física. Além de desenvolver a habilidade de solucionar problemas e a organização."
            imageCourse = "resultRobotica"
        case "natacao":
            emojiCourse = "🏊🏼"
            titleCourse = "Natação"
            textCourse = "A natação é um esporte individual que explora as capacidades físicas e motoras, ao passo que trabalha a musculatura e a respiração. Além de desenvolver a disciplina e aliviar o estresse."
            imageCourse = "resultNatacao"
        case "marciais":
            emojiCourse = "🥋"
            titleCourse = "Artes Marciais"
            textCourse = "As artes marciais são uma ótima oportunidade de explorar as capacidades físicas e exercitar a disciplina. Além de desenvolver as habilidades cognitivas e coordenação motora."
            imageCourse = "resultMarciais"
        case "instrumentos":
            emojiCourse = "🎼"
            titleCourse = "Instrumentos Musicais"
            textCourse = "Aprender um instrumento musical é uma ótima oportunidade de exercitar a criatividade e a paciência. Além de desenvolver a disciplina e a coordenação motora."
            imageCourse = "resultInstrumentos"
        case "futebol":
            emojiCourse = "⚽️"
            titleCourse = "Futebol"
            textCourse = "O futebol é um esporte em grupo que demanda interação e disciplina, além de desenvolver as capacidades motoras e físicas, trabalhando o cardiovascular e a musculatura."
            imageCourse = "resultFutebol"
        case "volei":
            emojiCourse = "🏐"
            titleCourse = "Vôlei"
            textCourse = "O vôlei é um esporte em grupo que demanda interação e disciplina, além de desenvolver as capacidades motoras e físicas, trabalhando o cardiovascular e a musculatura."
            imageCourse = "resultVolei"
        case "cenicas":
            emojiCourse = "🎭"
            titleCourse = "Artes Cênicas"
            textCourse = "Estudar artes cênicas é a oportunidade ideal para desenvolver a habilidade de socialização e as habilidades cognitivas, além de explorar a coordenação motora e a disciplina."
            imageCourse = "resultCenicas"
        case "linguagem":
            emojiCourse = "💬"
            titleCourse = "Idioma Estrangeiro"
            textCourse = "Estudar idiomas estrangeiros é uma ótima oportunidade para desenvolver a gramática e a conversação, além de auxiliar a socialização e a concentração."
            imageCourse = "resultIdioma"
        default:
            emojiCourse = "💬"
            titleCourse = "Idioma Estrangeiro"
            textCourse = "Estudar idiomas estrangeiros é uma ótima oportunidade para desenvolver a gramática e a conversação, além de auxiliar a socialização e a concentração."
            imageCourse = "resultIdioma"
        }
        emojiResult.text = emojiCourse
        textResult.text = textCourse
        titleResult.text = titleCourse
        imageResult.image = UIImage(named: imageCourse)
    }
    
    @IBAction func nextRight(_ sender: UIButton) {
        let imageLeft: String = "resultIdioma"
        let textLeft: String = "Estudar idiomas estrangeiros é uma ótima oportunidade para desenvolver a gramática e a conversação, além de auxiliar a socialização e a concentração."
        let emojiLeft: String = "💬"
        let titleLeft: String = "Idioma Estrangeiro"
        progressBar.image = UIImage(named: "pageTwo")
        
        viewResultLeft.isHidden = false
        buttonLeft.isHidden = false
        viewResultRight.isHidden = true
        buttonRight.isHidden = true
        //deixando a da esquerda com o curso do resultado
        imageResultLeft.image = UIImage(named: imageCourse)
        textResultLeft.text = textCourse
        //deixando a do meio com o idioma
        emojiResult.text = emojiLeft
        textResult.text = textLeft
        titleResult.text = titleLeft
        imageResult.image = UIImage(named: imageLeft)
    }
    
    @IBAction func nextLeft(_ sender: Any) {
        viewResultLeft.isHidden = true
        buttonLeft.isHidden = true
        viewResultRight.isHidden = false
        buttonRight.isHidden = false
        progressBar.image = UIImage(named: "pageOne")
        //card da left voltando pra ser idioma
        let imageLeft: String = "resultIdioma"
        let textLeft: String = "Estudar idiomas estrangeiros é uma ótima oportunidade para desenvolver a gramática e a conversação, além de auxiliar a socialização e a concentração."
        imageResultLeft.image = UIImage(named: imageLeft)
        textResultLeft.text = textLeft
        //card do meio voltando a ser resultado
        emojiResult.text = emojiCourse
        textResult.text = textCourse
        titleResult.text = titleCourse
        imageResult.image = UIImage(named: imageCourse)
        
    }
    
    @IBAction func anotherTest(_ sender: UIButton) {
        
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
