//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Matheus Migge on 04/08/23.
//

import UIKit

class QuestaoViewController: UIViewController {

    var pontuacao = 0
    var indiceNumeroQuestao = 0
    
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    @IBOutlet var botoesRespostas: [UIButton]!
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        
        let usuarioAcertouResposta = questoes[indiceNumeroQuestao].numeroRespostaCorreta == sender.tag
        
        if usuarioAcertouResposta {
            pontuacao += 1
            sender.backgroundColor = UIColor.corDeFundoVerde
        } else {
            sender.backgroundColor = UIColor.corDeFundoVermelho
        }
        
        if indiceNumeroQuestao < questoes.count - 1 {
            indiceNumeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.75, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else  {
            navegaParaTelaDesempenho()
        }
    }
    
    func navegaParaTelaDesempenho(){
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        for botao in botoesRespostas{
            botao.layer.cornerRadius = 12.0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarQuestao()
    } 
    
    @objc func configurarQuestao(){
        tituloQuestaoLabel.text = questoes[indiceNumeroQuestao].pergunta
        
        for botao in botoesRespostas{
            
            let tituloBotao = questoes[indiceNumeroQuestao].opcoes[botao.tag]
            
            botao.setTitle(tituloBotao , for: .normal)
         
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 1.0, alpha: 1.0)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
        
        desempenhoVC.pontuacao = pontuacao
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
