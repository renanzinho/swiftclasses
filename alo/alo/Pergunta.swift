//
//  Pergunta.swift
//  alo
//
//  Created by Turma Manhã on 03/04/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

public class Pergunta {
    
    let pergunta: String
    let resposta: String
    let hint:     String
    
    init(pergunta: String, resposta: String, hint: String) {
        self.pergunta = pergunta
        self.resposta = resposta
        self.hint     = hint
    }
    
    func check(_ resposta: String) -> Bool{
        return self.resposta.lowercased() == resposta.lowercased()
    }
    
}
