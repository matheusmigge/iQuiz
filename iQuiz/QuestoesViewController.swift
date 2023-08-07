//
//  QuestoesViewController.swift
//  iQuiz
//
//  Created by Matheus Migge on 03/08/23.
//

import UIKit

class QuestoesViewController: UIViewController {

    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = false
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
