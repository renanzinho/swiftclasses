//
//  ViewController.swift
//  Prototipo Fuziona Pufavo
//
//  Created by Renan Freitas on 16/04/18.
//  Copyright © 2018 Renan Freitas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var btn: UIButton!
    @IBOutlet var scene: UIView!
    @IBOutlet weak var table: UITableView!
    
    let lines = [
        "start": [
            "Olá jogador",
            "Esse jogo é sobre minha história até então na faculdade",
            "As histórias contadas aqui aconteceram comigo",
            "Ou, talvez, com outras pessoas",
            "Mas isso não as tornam menos reais"
        ],
        "first": [
            "'SEMANA DE PROVAS'",
            "Essa semana ta bem complicada. Amanhã e depois eu tenho prova.",
            "Fora os assuntos atrasados que eu tenho que botar em dia",
            ""
        ],
        "firstMessages": [
            "fernanda: Daaaaaale renanzinho!",
            "fernanda: Bora jogar uma po. Tem mais de mês que tu não joga.",
            "fernanda: Só falta mais um pra fechar o time"
        ],
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
    
    let options = [
        "first": [
            
            
        ]
    ]
    
    var teste = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tableViewFooter = UIView()
    
        
        table.tableFooterView = tableViewFooter
        table.dataSource = self
        table.delegate = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "firstSceneCell")
        view.addSubview(scene)
        attText("start")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.teste.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "firstSceneCell", for: indexPath)
        cell.textLabel?.text = self.teste[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        
        return cell

    }

    func attText(_ newScene: String) {
        
        teste = []
        
        var index = 0
        var i = 0
        
        while i < lines[newScene]!.count {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                self.teste.append(self.lines[newScene]![index])
                self.table.beginUpdates()
                self.table.insertRows(at: [IndexPath(row: self.teste.count - 1, section: 0)], with: .fade)
                self.table.endUpdates()
                self.table.scrollToRow(at: IndexPath(row: self.teste.count - 1, section: 0), at: .bottom, animated: true)
                index += 1
            }
            
            i += 1
        }
    }
    
    func chooseOptions(_ newScene: string){
        
    }
    
    
}

