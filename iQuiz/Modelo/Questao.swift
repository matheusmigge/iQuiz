//
//  Questao.swift
//  iQuiz
//
//  Created by Matheus Migge on 05/08/23.
//

import Foundation

struct Questao {
    var pergunta: String
    var opcoes: [String]
    var numeroRespostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(pergunta: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", opcoes: ["Expectro Patronum", "Avada Kedavra", "Expelliarmus"], numeroRespostaCorreta: 2),
    Questao(pergunta: "Quando foi lançado o filme Avatar 2?", opcoes: ["2014", "2022", "2023"], numeroRespostaCorreta: 1),
    Questao(pergunta: "Quando foi lançado o filme Vingadores Ultimato?", opcoes: ["2019", "2018", "2017"], numeroRespostaCorreta: 0),
    Questao(pergunta: "Qual é o primeiro filme da franquia Star Wars?", opcoes: ["Star Wars: A Ameaça Fantasma", "Star Wars: Uma Nova Esperança", "Star Wars: O Império Contra-Ataca"], numeroRespostaCorreta: 1),
    Questao(pergunta: "Qual é o primeiro filme do Universo Cinematográfico Marvel (MCU)?", opcoes: ["Homem de Ferro", "Capitão América: O Primeiro Vingador", "Thor"], numeroRespostaCorreta: 0),
    Questao(pergunta: "Qual é o personagem principal de The Office, interpretado por Steve Carell?", opcoes: ["Michael Scott", "Jim Halpert", "Dwight Schrute"], numeroRespostaCorreta: 0),
    Questao(pergunta: "Qual é o trabalho de Jay Pritchett na série Modern Family?", opcoes: ["Médico", "Empresário", "Advogado"], numeroRespostaCorreta: 1),
]
