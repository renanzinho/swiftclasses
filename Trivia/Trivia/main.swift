//
//  main.swift
//  Trivia
//
//  Created by Turma Manhã on 21/02/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation
// ----------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------- TRIVIA -------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------

//let pergunta1 = "Qual o filme mais aguardado da historia, segundo Rogerinho do Inga, do programa Choque de Cultura?"
//let resposta1 = "Velozes e Furiosos 7"
//
//let pergunta2 = "Qual personagem possui o marcante apelido \"palestrinha\" no programa Choque de Cultura?"
//let resposta2 = "Maurilio"
//
//let pergunta3 = "Da pra dirigir carro, mesmo sendo cego?"
//let resposta3 = "Sim"
//
//let pergunta4 = "Filme de Harry Potter sem Harry Potter..."
//let resposta4 = "b"
//let alternativas4 = ["a. É bom","b. É golpe","c. Engenharia de Som","d. É melhor que transformers"]
//
//let pergunta5 = "Qual o nome da namorada do Julinho da Van?"
//let resposta5 = "Amanda dos Anjos"
//
//let pergunta6 = "Na época de Itamar, quem era o presidente?"
//let resposta6 = "Itamar"
//
//var pontos = 0
//
//// Pergunta 1
//print("ATENÇÃO: As respostas devem ser digitadas SEM acento\n")
//print(pergunta1)
//var respostaUsuario = readLine()
//if(respostaUsuario?.lowercased() == resposta1.lowercased()){
//    print("Isso é que é filme!\n")
//    pontos += 1
//} else {
//    pontos -= 1
//    print("Achou errado, otário!\n")
//}
//
//// Pergunta 2
//print(pergunta2)
//respostaUsuario = readLine()
//if(respostaUsuario?.lowercased() == resposta2.lowercased()){
//    print("Esse menino é dodoi.\n")
//    pontos += 1
//} else {
//    pontos -= 1
//    print("Se equivocou, amante da sétima arte!\n")
//}
//
//// Pergunta 3
//print(pergunta3)
//respostaUsuario = readLine()
//if(respostaUsuario?.lowercased() == resposta3.lowercased()){
//    print("Tá certo! O Detran que é rigoroso.\n")
//    pontos += 1
//} else {
//    pontos -= 1
//    print("Dá pra dirigir cego sim, rapá! O Detran que é rigoroso.\n")
//}
//
//// Pergunta 4
//print(pergunta4)
//for i in alternativas4 {
//    print(i)
//}
//respostaUsuario = readLine()
//if(respostaUsuario?.lowercased() == resposta4.lowercased()){
//    print("TÁ CERTA A INDIGNAÇÃO!\n")
//    pontos += 1
//} else if respostaUsuario?.lowercased() == "d" {
//    pontos -= 1
//    print("TÁ MALUCO, PORRA??")
//} else {
//    pontos -= 1
//    print("Reflita no que você está falando.\n")
//}
//
//// Pergunta 5
//print(pergunta5)
//respostaUsuario = readLine()
//if(respostaUsuario?.lowercased() == resposta5.lowercased()){
//    print("Ela é minha sopinha de abóbora.\n")
//    pontos += 1
//} else {
//    pontos -= 1
//    print("Achou errado, otário!\n")
//}
//
////Pergunta 6
//print(pergunta6)
//respostaUsuario = readLine()
//if(respostaUsuario?.lowercased() == resposta6.lowercased()){
//    print("Eu acho que é isso ai mesmo.\n")
//    pontos += 1
//} else {
//    pontos -= 1
//    print("Para de inventar palavra, oh rapá!\n")
//}
//
//
//if pontos >= 4 {
//    print("\n\nFizesse \(pontos) pontos. Falo com tranquilidade que você é um conhecedor da arte produzida pelos maiores nomes do transporte alternativo.\n")
//} else {
//    print("\n\nSabe de nada rapá! Como tu consegue fazer \(pontos) pontos? Como recadinho final, acessa http://bit.ly/2CcBIhI pra conhecer esses grandes nomes do transporte alternativo\n")
//}

// ----------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------- EXERCICIO DO ALFANUMERICO ---------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------

//print("Digite um Caractere")
//var entrada = readLine()
//
//if let entrada = entrada {
//    if entrada.count > 1 {
//        print("Entrada deve possuir apenas um caractere.")
//    } else {
//        let i = Int(UnicodeScalar(entrada)!.value)
//        if i >= 48 && i <= 57 {
//            print("Numerico")
//        } else if (i >= 65 && i <= 90) || (i >= 97 && i <= 122){
//            print("Alfabetico")
//        } else {
//            print("Nenhum")
//        }
//    }
//}



// ----------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------- EXERCICIO ADIVINHAR NR ------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------

//print("Jogador 1, digite um numero:")
//let resposta = readLine()
//if let resposta = resposta {
//    print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
//    var x = true
//    for _ in 0..<3 {
//        print("Jogador 2, digite um palpite:")
//        let palpite = readLine()
//        if let palpite = palpite {
//            if Int(palpite)! > Int(resposta)! {
//                print("tente um numero menor")
//            } else if Int(palpite)! < Int(resposta)! {
//                print("tente um numero maior")
//            } else {
//                print("acerto mizeravi")
//                x = false
//                break
//            }
//        }
//    }
//    if x {
//        print("ERRRRRRRROOOU")
//        print("O nr certo era \(resposta)")
//    }
//
//}



// ----------------------------------------------------------------------------------------------------------------------
// ------------------------------------------ VERIFICA SE EH DIVISIVEL POR 3 --------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------

//print("Digite um numero entre 100 e 999:")
//let nr = readLine()
//
//if let nr = nr {
//    let intnr = Int(nr)
//    if let intnr = intnr {
//        if intnr < 100 || intnr > 999 {
//            print("Numero invalido")
//        } else {
//            if intnr % 3 == 0 {
//                print("Eh divisivel")
//            } else {
//                print("Nao eh divisivel")
//            }
//        }
//    }
//}


// ----------------------------------------------------------------------------------------------------------------------
// -------------------------------------------- RECEBE 3 NRS E DA O SORT ------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------

//print("digite 3 numeros. De enter entre cada um deles")
//var entradas : [Int] = []
//
//for _ in 0..<3 {
//    let entrada = readLine()
//    if let entrada = entrada {
//        let intEntrada = Int(entrada)
//        if let intEntrada = intEntrada {
//            entradas.append(intEntrada)
//        }
//    }
//}
//
//print(entradas.sorted())


// ----------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------ CALCULADORA ---------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------

//print("Digite o operador")
//let op = readLine()
//if let op = op {
//    if(["+", "-", "*", "/"].contains(op)){
//
//        print("Digite os dois operandos. De enter entre eles")
//        let optOp1 = readLine()
//        let optOp2 = readLine()
//
//        if let op1 = optOp1, let op2 = optOp2{
//
//            let optFloatOp1 = Float(op1)
//            let optFloatOp2 = Float(op2)
//
//            if let floatOp1 = optFloatOp1, let floatOp2 = optFloatOp2 {
//
//                switch(op){
//                case "+":
//                    print(floatOp1+floatOp2)
//                case "-":
//                    print(floatOp1-floatOp2)
//                case "*":
//                    print(floatOp1*floatOp2)
//                case "/":
//                    print(floatOp1/floatOp2)
//                default:
//                    print("")
//                }
//
//            }
//
//        }
//
//    }
//}



// ----------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------ DOIS NUMEROS SECRETOS------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
/*
print("Jogador 1, digite os numeros")
let optNr1 = readLine()
let optNr2 = readLine()

if let nr1 = optNr1, let nr2 = optNr2 {
    let optIntNr1 = Int(nr1)
    let optIntNr2 = Int(nr2)
    if let intNr1 = optIntNr1, let intNr2 = optIntNr2 {
        var nrs = [intNr1, intNr2].sorted()
        var cestfini = false
        print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
        
        while(!cestfini){
            print("Jogador 2, digite o palpite")
            let optPalpite = readLine()
            if let palpite = optPalpite {
                let optIntPalpite = Int(palpite)
                if let intPalpite = optIntPalpite {
                    
                    if nrs.count > 1 {
                        if intPalpite < nrs[0] {
                            print("Seu numero eh menor que o menor dos 2 numeros")
                        } else if intPalpite > nrs[1] {
                            print("seu numero eh maior que o maior dos 2 numeros")
                        } else if intPalpite > nrs[0]  && intPalpite < nrs[1] {
                            print("Seu numero esta entre os 2 numeros")
                        } else {
                            print("Acerto mizeravi, agora resta um numero")
                            if let i = nrs.index(of: intPalpite) {
                                nrs.remove(at: i)
                            }
                        }
                    } else {
                        if intPalpite > nrs[0] {
                            print("Seu numero eh maior que o numero restante")
                        } else if intPalpite < nrs[0] {
                            print("Seu numero eh menor que o numero restante")
                        } else {
                            print("Acertou, mizeravi!")
                            print("GG")
                            cestfini = true
                        }
                    }
                }
            }
        }
    }
}
*/












// ------------------------------------------------ AULA 6 --------------------------------------------------------------


// ----------------------------------------------------------------------------------------------------------------------
// -------------------------------------------------- FIZZBUZZ ----------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
/*
for i in 1...100 {
    if i % 3 == 0 {
        if i % 5 == 0 {
            print("FizzBuzz")
        } else {
            print("Fizz")
        }
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}
*/


// ----------------------------------------------------------------------------------------------------------------------
// -------------------------------------------------- SOMA ATE 0 --------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
/*
var sum = 0

print("Vai digitando os numero ai. So para qnd digitar 0")
if let optNr = readLine(), let intNr = Int(optNr) {
    sum += intNr
    if intNr != 0 {
        
        var triste = 1
        while triste != 0 {
            if let optNr = readLine(), let intNr = Int(optNr) {
                sum += intNr
                triste = intNr
            }
            
        }
    }
}
print("A soma eh \(sum)")
*/


// ----------------------------------------------------------------------------------------------------------------------
// -------------------------------------------------- FATORIAL ----------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
/*
print("Digita um numero ae")
var fat = 1
if let strNr = readLine(), let nr = Int(strNr) {
    for n in 1...nr {
        fat *= n
    }
}

print("Dale mo pirraia \(fat)")
*/


// ----------------------------------------------------------------------------------------------------------------------
// -------------------------------------------------- FIBONACCI ---------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
/*
print("Digita ae")

var n1 = 0
var n2 = 1
if let strNr = readLine(), let nr = Int(strNr) {
    for _ in 3...nr {
        let n = n1
        n1 = n2
        n2 = n2 + n
    }
}
print("Dale \(n2)")
*/


// ----------------------------------------------------------------------------------------------------------------------
// -------------------------------------------------- PRIMOS ------------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
/*
print("Digita ae")
if let strNr = readLine(), let nr = Int(strNr) {
    var eh = true
    for i in 2..<nr {
        if nr % i == 0 {
            eh = false
            print("Numero nao eh primo")
            break
        }
    }
    if eh {
        print("Numero eh primo")
    }
    
}
*/


// ----------------------------------------------------------------------------------------------------------------------
// ------------------------------------------- PRIMOS EM INTERVALO ------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
/*
print("Digita ae")
if let strNr = readLine(), let nr = Int(strNr) {
    
    for i in 2...nr {
        var eh = true
        for j in 2..<i {
            if i % j == 0 {
                eh = false
                break
            }
        }
        if eh {
            print(i)
        }
    }
}
*/



// ----------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------- DIVISORES ----------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
/*
print("DIGITA AE CARAIO")
if let strNr = readLine(), let nr = Int(strNr) {
    
    var div : [Int] = []
    
    var eh = true
    for i in 2..<nr {
        if nr % i == 0 {
            eh = false
            div.append(i)
        }
    }
    if eh {
        print("Numero eh primo")
    } else {
        print("O numero nao eh primo e eh divisivel por \(div)")
    }
}
*/


// ----------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------- DIVISORES ----------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
/*
print("DIGITA AE")
if let strNr = readLine(), let nr = Int(strNr) {
    
    var medias : [Float] = []
    
    for j in 1...nr {
        var media = 0
        
        for i in 1...j {
            media += i
        }
        
        medias.append(Float(media)/Float(j))
        
    }
    print("OH O AUE AI OH \(medias)")
}
*/


// ----------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------- pwr root -----------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
/*
print("DIGITA O Y AE:")
if let strY = readLine(), let y = Int(strY) {
    
    for root in 1...y {
        var cabousse = false
        for pwr in 1...5 {
            let attempt = pow(Decimal(root),pwr)
            if attempt == Decimal(y) {
                print("O par eh root: \(root) e pow: \(pwr)")
                cabousse = true
                break
            }
        }
        if cabousse {
            break
        }
    }
}
*/


// ----------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------- SOMA DIGITOS ---------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
/*
print("Digita ae")
var sum = 0
if let strNr = readLine(), var nr = Int(strNr) {
    
    let digitos = strNr.count
    
    for i in (1...digitos).reversed() {
        let power = (NSDecimalNumber(decimal: pow((10) ,(i-1)))).intValue
        sum += nr/power
        nr = nr%power
    }
    
    print("A soma dos digitos eh: \(sum)")
    
}
*/


// ----------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------- SOMA DIGITOS STR -----------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
/*
print("Digita ae:")
var sum = 0

if let str = readLine() {
    for i in 0..<str.count {
        sum += Int(String(str[str.index(str.startIndex, offsetBy: i)]))!
    }
    print(sum)
}
*/


// ----------------------------------------------------------------------------------------------------------------------
// ----------------------------------------------- ADIVINHA ESTRANHO ----------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
/*
print("Jogador 1, digite o N que deve estar entre 1 e 200:")

if let strN = readLine(), let n = Int(strN) {
    if n > 0 && n <= 200 {
        
        print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
        var s = 0
        var cont = 0
        while s != n {
            print("Jogador 2, insira um palpite. Esse palpite deve ser 1, 10 ou 100.")
            if let strPalpite = readLine(), let palpite = Int(strPalpite) {
                if [1,10,100].contains(palpite) {
                    
                    if s < n {
                        s += palpite
                    } else {
                        s -= palpite
                    }
                    
                    cont += 1
                    
                } else {
                    print("O palpite deve ser 1, 10 ou 100")
                }
            }
        }
        
        print("Voce acertou! O numero era \(n) e voce levou \(cont) palpites para acertar.")
        
    } else {
        print("Insira um numero no intervalo de 1 a 200")
    }
} else {
    print("Numero invalido")
}
*/



// ----------------------------------------------------------------------------------------------------------------------
// -------------------------------------------- TABELA DE MULTIPLICACAO -------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
/*
print("Digita um N ai:")
if let strN = readLine(), let n = Int(strN) {
    
    var tabela : [String] = []
    
    for i in 1...n {
        var str = ""
        for j in 1...n{
            str += " \(i*j)"
        }
        tabela.append(str)
    }
    
    var str = "  "
    for i in 1...n {
        str += " \(i)"
    }
    
    for i in 0..<n {
        tabela[i] = "\(i+1) " + tabela[i]
    }
    
    tabela = [str] + tabela
    
    print("")
    
    for i in 0..<tabela.count{
        print(tabela[i])
    }
}
*/



// ----------------------------------------------------------------------------------------------------------------------
// ------------------------------------------------------ RAIO ----------------------------------------------------------
// ----------------------------------------------------------------------------------------------------------------------
print("Digite um raio:")
let raioteste = Optional("20")
// if let strRaio = readLine(), let raio = Int(strRaio) {
if let strRaio = raioteste, let raio = Int(strRaio){
    
    var str = ""
    for i in 0..<(raio*2)-1 {
        
        let branco = abs(raio-i-1)
        for _ in 0..<branco {
            str += "."
        }
        for k in 0..<(raio*2)-1-(branco*2){
            str += "*"
            
        }
        for _ in 0..<branco {
            str += "."
        }
        
        str += "\n"
        
    }
    print(str)
    
    
}







