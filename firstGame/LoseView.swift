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

    }
    
    @IBAction func tryAgain(_ sender: UIButton) {
    
        dismiss(animated: true)
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation

    
    
}
