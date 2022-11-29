//
//  File.swift
//  firstGame
//
//  Created by Слава Орлов on 06.11.2022.
//
import Foundation

protocol Entity{ // протокол предназначенный для создания существа
    
    var name: String { get }
    var health: Int {get set}
    var weapon: Weapon  {get set}
    var isDead: Bool {get set}

}

struct Weapon{
    var name: String
    var damage: Int
    var price: Int
}

var diedEnemyes = 0

var pistol = Weapon(name: "Pistol", damage: 15, price: 20 )
var shootgun = Weapon(name: "ShootGun", damage: 25, price: 100)
var knife = Weapon(name: "Knife", damage: 5, price: 5)
var grenade = Weapon(name: "M4", damage: 50, price: 500)

var player = Player(weapon: shootgun , name: "player")
var enemy = Enemy(weapon: knife, name: "enemy")
