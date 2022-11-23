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

var timer: Timer?

var level: Int = 0

struct Weapon{
    var name: String
    var damage: Int
}
