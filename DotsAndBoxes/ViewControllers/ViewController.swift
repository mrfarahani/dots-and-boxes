//
//  ViewController.swift
//  DotsAndBoxes
//
//  Created by Mohammad on 11/14/18.
//  Copyright © 2018 Mohammadrf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startGameButtonPressed(self)
    }

    @IBAction func startGameButtonPressed(_ sender: Any) {
        let game = GameViewController(dimention: 7)
        self.present(game, animated: true, completion: nil)
    }
    
}

