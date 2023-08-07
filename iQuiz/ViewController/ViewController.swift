//
//  ViewController.swift
//  iQuiz
//
//  Created by Matheus Migge on 02/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    @IBAction func botaoPressionado(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }

    func configuraLayout() {
        botaoIniciarQuiz.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
        
    }

}

