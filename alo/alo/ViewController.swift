//
//  ViewController.swift
//  alo
//
//  Created by Turma Manhã on 03/04/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var pontosBox: UILabel!
    @IBOutlet weak var textBox: UILabel!
    @IBOutlet weak var tentativasBox: UILabel!
    
    var pontos = 0
    var ind = 0
    let perguntas = [
        Pergunta(pergunta: "Quinhe?", resposta: "diz tu", hint: "alo?"),
        Pergunta(pergunta: "11+4", resposta: "22", hint: "Acerto mizeravi")
    ]
    var done = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textBox.text = self.perguntas[ind].pergunta
        self.tentativasBox.text = "Voce ainda possui \(self.perguntas[ind].tentativas) tentativas"
        self.pontosBox.text = "Voce tem \(self.pontos) pontos"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toc(_ sender: Any) {
        if perguntas[ind].check(textBox.text!) {
            
            UIView.animate(withDuration: <#T##TimeInterval#>, animations: <#T##() -> Void#>, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
            
        } else {
            
        }
    }
    
    func generateQuestion() {
        
    }
    

}

