import Foundation
import UIKit

struct Player: Entity {
    
    var weapon: Weapon
    var isDead: Bool = false
    let name: String
    var health: Int = 100
    var healthKits = [1,1]
    
    mutating func takeHealthKit(for button: UIButton) { // аптечка (их у игрока должно быть 2)
        health += 20
        healthKits.remove(at: 0)
        if healthKits.isEmpty{
            button.isEnabled = false
        }
    }
    
    func shoot(to enemy: Enemy) { // метод выстрела по врагу
        
        enemy.health -= weapon.damage

        if enemy.health <= 0 {
            enemy.isDead = true
            gameResult = .win
            print("Enemy \(enemy.name) is dead from \(weapon.name)!")
        }
    }   /* если у энеми меньше или равно 0 хп то он умирает */
}

class Enemy: Entity{

    var weapon: Weapon
    var isDead: Bool = false
    let name: String
    var health: Int = 100
    
    init(weapon: Weapon, name: String) {
        self.weapon = weapon
        self.name = name
    }

    func shoot(to player: inout Player) {
        
        player.health -= weapon.damage
        
        if player.health <= 0 {
            player.isDead = true
            gameResult = .lose
        }
        
        print("Enemy has shoot to \(player.name) and give him \(weapon.damage) damage")
        print("player health - \(player.health)")
        
        if player.isDead {
            print("\(player.name) is dead")
        }
    }
}

func updateLabels(_ playerLabel: UILabel, _ enemyLabel: UILabel, _ player: Player, _ enemy: Enemy, _ levelLabel: UILabel ){
    playerLabel.text = String(player.health)
    enemyLabel.text = String(enemy.health)
    levelLabel.text = "LVL \(level)"
}

func resetGame(in view: UIViewController, for player: inout Player, and enemy: inout Enemy){
    
    if gameResult == .lose {
        view.view.backgroundColor = .white
        level = 0
        player.health = 100
        player.isDead = false
        enemy.health = 100
    }
}
