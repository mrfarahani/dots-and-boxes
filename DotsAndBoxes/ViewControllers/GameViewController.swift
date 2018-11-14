//
//  GameViewController.swift
//  DotsAndBoxes
//
//  Created by Mohammad on 11/14/18.
//  Copyright © 2018 Mohammadrf. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    // How many dots in both direction the gameboard contains
    let dimention: Int
    
    var model: GameModel?
    var gameboard: GameboardView?
    
    init(dimention d: Int) {
        dimention = d > 4 ? d : 4
        super.init(nibName: nil, bundle: nil)
        model = GameModel(dimention: dimention)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGame()
    }
    
    func setupGame() {
        let vcHeight = view.bounds.size.height
        let vcWidth = view.bounds.size.width
        
        let board = GameboardView(dimention: dimention)
        board.frame.origin.x = GameboardView.gameboardMargin/2
        board.frame.origin.y = 100
        
        gameboard = board
        view.addSubview(board)
        view.backgroundColor = UIColor.white
    }
}
