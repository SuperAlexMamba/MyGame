//
//  ViewController.swift
//  firstGame
//
//  Created by Слава Орлов on 05.11.2022.
//

import UIKit
    
class ViewController: UIViewController {
    
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var labelOfEnemyHP: UILabel!
    @IBOutlet weak var labelOfPlayerHP: UILabel!
    @IBOutlet weak var healthKit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        gameResult = .play
    }
    
    @IBAction func shootAction(_ sender: UIButton) {
        player.shoot(to: enemy)
        enemy.shoot(to: &player)
        checkResultStatus(in: self)
        updateLabels(labelOfPlayerHP, labelOfEnemyHP, player, enemy, levelLabel)
    }
    
    @IBAction func takeHealthKit(_ sender: UIButton) {
        if player.health != 100{
            player.takeHealthKit(for: healthKit)
            updateLabels(labelOfPlayerHP, labelOfEnemyHP, player, enemy, levelLabel)
        }
        else {
            healthKit.isEnabled = false
        }
    }
}
