//
//  ViewController.swift
//  Prototipo Fuziona Pufavo
//
//  Created by Renan Freitas on 16/04/18.
//  Copyright © 2018 Renan Freitas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var playButton: UIImageView!
    @IBOutlet var startingScreen: UIView!
    @IBOutlet weak var optionsTable: UITableView!
    @IBOutlet var scene: UIView!
    @IBOutlet weak var table: UITableView!
    @IBOutlet var sceneNoOptions: UIView!
    @IBOutlet weak var tableNoOptions: UITableView!
    
    
    let lines = [
        "start": [
            "Olá jogador",
            "Esse jogo é sobre minha história até então na faculdade",
            "As histórias contadas aqui aconteceram comigo",
            "Ou, talvez, com outras pessoas",
            "Mas isso não as tornam menos reais",
            "'SEMANA DE PROVAS'",
            "Essa semana ta bem complicada. Amanhã e depois eu tenho prova.",
            "Fora os assuntos atrasados que eu tenho que botar em dia",
            "",
            "(Mensagem da fernanda)",
            "fernanda: Daaaaaale renanzinho!",
            "fernanda: Bora jogar uma po. Tem mais de mês que tu não joga.",
            "fernanda: Só falta mais um pra fechar o time"
        ],
//        "first": [
//            "'SEMANA DE PROVAS'",
//            "Essa semana ta bem complicada. Amanhã e depois eu tenho prova.",
//            "Fora os assuntos atrasados que eu tenho que botar em dia",
//            ""
//        ],
//        "firstMessages": [
//            "fernanda: Daaaaaale renanzinho!",
//            "fernanda: Bora jogar uma po. Tem mais de mês que tu não joga.",
//            "fernanda: Só falta mais um pra fechar o time"
//        ],
        "estudar": [
            "'ESTUDANDO'",
            "...",
            "...",
            "",
            "6 da manhã já! Ta na hora de tomar banho e ir pra aula!!",
            "Só espero ter estudado o suficiente"
        ],
        "jogar": [
            "...",
            "...",
            "...",
            "",
            "MEU DEUS",
            "Olha a hora!!! Eu tneho tanto assunto pra estudar ainda.",
            "Calma, Calma...",
            "Ainda tem 6 horas pra prova. Se eu começar a estudar agora, da pra terminar a tempo. (Eu espero)"
        ],
        "dormir": [
            "",
            "Ahhh que sono bom!",
            "To pronto pra outra.",
            "Da até pra estudar alguma coisa no ônibus."
        ],
        "faculdadeCansado": [
            "'MOMENTOS ANTES DA PROVA'",
            "Deu até pra tirar um cochilo no ônibus, mas ainda to morto",
            "Acho que as 4 latinhas de energético que tomei tão fazendo efeito...",
            ""
        ],
        "faculdadeCansadoConversa": [
            "fernanda: fala renanzinho! Terminasse de estudar?",
            "renanzinho: médio",
            "fernanda: estudasse aquela parada lá?",
            ""
        ],
        "faculdadeCansadoContinues": [
            "Ainda tenho que ver esse assunto!",
            "Faltam 10 minutos pra prova. Não vai dar.",
            "SOCORRO!"
        ],
        "faculdadeCansadoConversaContinues": [
            "fernanda: vai começar a prova, vamo!",
            "renanzinho: é só isso. Não tem mais jeito. Acabou.",
            "fernanda: boa sorte",
            ""
        ],
        "faculdadeNovo": [
            "'MOMENTOS ANTES DA PROVA'",
            "Deu até pra revisar aquele assunto que eu não tinha sacado direito.",
            "Mas ainda to um pouco inseguro...",
            "Talvez eu não devesse ter dormido."
        ],
        "faculdadeNovoConversa": [
            "fernanda: fala renanzinho! Terminasse de estudar?",
            "renanzinho: médio",
            "fernanda: estudasse aquela parte lá",
            ""
        ],
        "faculdadeNovoContinues": [
            "POR QUE EU DORMI TANTO????",
            "Ta faltando tanta coisa ainda. Era pra eu ter estudado",
            "So espero conseguir desenrolar alguma coisa.",
            "Eu PRECISO ir bem nessa prova."
        ],
        "posProvaCansado": [
            "'UMA SEMANA DEPOIS...'",
            "girafales: A nota da prova vai ser divulgada naquele quadro gigante ali na frente da sala pra todo mundo ver.",
            "girafales: A melhor nota vai ser recomensada com uma bolsa de IC.",
            ""
        ],
        "posProvaCansadoQuadro": [
            "TRÊS?????",
            "A fernanda tirou 10??? como assim?",
            "Eu me esforcei tanto e quem vai reseber toda a recompensa é a Fernanda que passou tanto tempo jogando?",
            "E meu nome ainda ta aqui pra todo mundo ver... D:",
            "Eu precisava tanto ir bem nessa cadeira. Logo agora que eu ia ficar bem com o girafales, conseguir a bolsa... meio caminho pro doutorado.",
            "E agora? Acabou?",
            "Não sei o que fazer."
        ],
        "posProvaNovo": [
            "'UMA SEMANA DEPOIS...'",
            "girafales: A nota da prova vai ser divulgada naquele quadro gigante ali na frente da sala pra todo mundo ver.",
            "girafales: A melhor nota vai ser recomensada com uma bolsa de IC.",
            ""
        ],
        "posProvaNovoQuadro": [
            "SETE??????",
            "Como a fernanda tirou 10??",
            "Eu me esforcei tanto e quem vai receber toda a recompensa é a Fernanda que passou tanto tempo jogando?",
            "Eu precisava tanto ir bem nessa cadeira. Logo agora que eu ia ficar bem com o girafales, conseguir a bolsa... meio caminho pro doutorado.",
            "E agora? Acabou?",
            "Não sei o que fazer."
        ],
        "GG": [
            "A psicologia poderia ter te ajudado com x y e z."
        ]
    ]
    
    var stack = [String]()
    let options = [
        "first": [
            "Eu tenho eh que estudar. Vou virar a noite :(",
            "Vou so uma pra desestressar, depois estudar!!!",
            "Vou capotar, isso sim! To sem dormir direito esse mes todo."
        ]
    ]
    
    var teste = [String]()
    var testeOptions = [String]()
    var testeNoOptions = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tableViewFooter = UIView()
        
        table.tableFooterView = tableViewFooter
        table.dataSource = self
        table.delegate = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "firstSceneCell")
        
        optionsTable.tableFooterView = tableViewFooter
        optionsTable.dataSource = self
        optionsTable.delegate = self
        optionsTable.register(UITableViewCell.self, forCellReuseIdentifier: "optionsCell")
        
        tableNoOptions.tableFooterView = tableViewFooter
        tableNoOptions.dataSource = self
        tableNoOptions.delegate = self
        tableNoOptions.register(UITableViewCell.self, forCellReuseIdentifier: "noOptionsCell")
        
        self.view.addSubview(startingScreen)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapped(_:)))
        playButton.addGestureRecognizer(tap)
        playButton.isUserInteractionEnabled = true
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var count:Int?
        
        if tableView == self.table {
            count = self.teste.count
        }
        
        if tableView == self.optionsTable {
            count = self.testeOptions.count
        }
        
        if tableView == self.tableNoOptions {
            count = self.testeNoOptions.count
        }
        
        return count!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch(indexPath.row){
//        case 0:
//            UIView.animate(withDuration: 1, animations: {
//                self.scene.center.y = self.view.center.y - self.view.frame.height
//                self.scene.alpha = 0
//            }, completion: {
//                (value: Bool) in
//                self.scene.removeFromSuperview()
//                self.view.addSubview(self.sceneNoOptions)
//                self.sceneNoOptions.center.y = self.view.center.y + self.view.frame.height
//                self.sceneNoOptions.alpha = 0
//                UIView.animate(withDuration: 1, animations: {
//                    self.sceneNoOptions.center.y = self.view.center.y
//                    self.sceneNoOptions.alpha = 1
//                }, completion: {
//                    (value: Bool) in
//                    self.attTextNoOptions("estudar")
//                })
//                
//                
//            })
//        case 1:
//        case 2:
        default:
            break
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell?
        
        if tableView == self.table {
            cell = tableView.dequeueReusableCell(withIdentifier: "firstSceneCell", for: indexPath)
            cell?.textLabel?.text = self.teste[indexPath.row]
            cell?.textLabel?.numberOfLines = 0
        }
        
        if tableView == self.optionsTable {
            cell = tableView.dequeueReusableCell(withIdentifier: "optionsCell", for: indexPath)
            cell?.textLabel?.text = self.testeOptions[indexPath.row]
            cell?.textLabel?.numberOfLines = 0
            cell?.textLabel?.textColor = UIColor(red: 245 / 255, green: 80 / 255, blue: 87 / 255, alpha: 1)
        }
        
        if tableView == self.tableNoOptions {
            cell = tableView.dequeueReusableCell(withIdentifier: "noOptionsCell", for: indexPath)
            cell?.textLabel?.text = self.testeNoOptions[indexPath.row]
            cell?.textLabel?.numberOfLines = 0
        }
        
        return cell!
        
    }
    
        @objc func tapped(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: 1, animations: {
            self.startingScreen.alpha = 0
            self.startingScreen.center.y = self.view.center.y - self.view.frame.height
        }, completion: {(value: Bool) in
            self.scene.alpha = 0.3
            self.scene.center.y = self.view.center.y + self.view.frame.height
            self.startingScreen.removeFromSuperview()
            self.view.addSubview(self.scene)
            UIView.animate(withDuration: 1, animations: {
                self.scene.alpha = 1
                self.scene.center.y = self.view.center.y
            }, completion: {(value: Bool) in
                self.attText("start")
            })
            
        })
        
    }

    
    func attText(_ newScene: String) {
        teste = []
        
        var index = 0
        var i = 0
        
        while i < lines[newScene]!.count {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                self.teste.append(self.lines[newScene]![index])
                print(index)
                self.table.beginUpdates()
                self.table.insertRows(at: [IndexPath(row: self.teste.count - 1, section: 0)], with: .fade)
                self.table.endUpdates()
                self.table.scrollToRow(at: IndexPath(row: self.teste.count - 1, section: 0), at: .bottom, animated: true)
                
                if index == self.lines[newScene]!.count - 1 {
                    self.chooseOptions("first")
                }
                index += 1
            }
            
            i += 1
        }
        
    }
    
    func attTextNoOptions(_ newScene: String) {
        teste = []
        
        var index = 0
        var i = 0
        
        while i < lines[newScene]!.count {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                self.testeNoOptions.append(self.lines[newScene]![index])
                self.tableNoOptions.beginUpdates()
                self.tableNoOptions.insertRows(at: [IndexPath(row: self.testeNoOptions.count - 1, section: 0)], with: .fade)
                self.tableNoOptions.endUpdates()
                self.tableNoOptions.scrollToRow(at: IndexPath(row: self.testeNoOptions.count - 1, section: 0), at: .bottom, animated: true)
                index += 1
            }
            
            i += 1
        }
    }
    
    func chooseOptions(_ newScene: String){
        
        testeOptions = []
        
        var index = 0
        var i = 0
        
        while i < options[newScene]!.count {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                self.testeOptions.append(self.options[newScene]![index])
                print(index)
                self.optionsTable.beginUpdates()
                self.optionsTable.insertRows(at: [IndexPath(row: self.testeOptions.count - 1, section: 0)], with: .fade)
                self.optionsTable.endUpdates()
                self.optionsTable.scrollToRow(at: IndexPath(row: self.testeOptions.count - 1, section: 0), at: .bottom, animated: true)
                index += 1
            }
            
            i += 1
        }
        
    }
    
    
}


