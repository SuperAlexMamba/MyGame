//
//  GameState.swift
//  firstGame
//
//  Created by Слава Орлов on 06.11.2022.
//

import Foundation
import UIKit

enum GameResult{
    case win, lose, play
}
var gameResult: GameResult = .play

func checkResultStatus(in view: UIViewController){
    
    switch gameResult{
    case .win:
        view.view.backgroundColor = .systemGreen
        level += 1
    case .lose:
        view.view.backgroundColor = .systemRed
        view.performSegue(withIdentifier: "Lose", sender: nil)
        level = 0
    case .play:
        view.view.backgroundColor = .white
        diedEnemyes = 0
    }
}
