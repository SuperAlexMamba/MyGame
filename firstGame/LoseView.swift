//
//  LoseView.swift
//  firstGame
//
//  Created by Слава Орлов on 14.11.2022.
//

import UIKit

class LoseView: UIViewController {
    
    @IBOutlet weak var diedEnemyesCount: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        diedEnemyesCount.text = String(diedEnemyes)
    }
    
    @IBAction func tryAgain(_ sender: UIButton) {
        resetGame(in: ViewController() , for: &player, and: &enemy)
        diedEnemyesCount.text = String(diedEnemyes)
        let mmm = ViewController()
        mmm.view.backgroundColor = .white
//        updateLabels(mainView.labelOfPlayerHP, mainView.labelOfEnemyHP, player, enemy, mainView.levelLabel)
        dismiss(animated: true)
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation

    
    
}
