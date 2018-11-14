//
//  GameboardView.swift
//  DotsAndBoxes
//
//  Created by Mohammad on 11/14/18.
//  Copyright © 2018 Mohammadrf. All rights reserved.
//

import UIKit

class GameboardView: UIView {
    let dimention: Int
    static let gameboardMargin: CGFloat = 15

    init(dimention d: Int) {
        dimention = d
        let screen = UIScreen.main.bounds
        let margin = GameboardView.gameboardMargin
        super.init(frame: CGRect(x: 0, y: 0, width: screen.width - margin, height: screen.width - margin))
        self.backgroundColor = UIColor.lightGray
        setupGameBoardView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupGameBoardView() {
        let dotsCount = CGFloat(dimention)
        let boxWidth = self.frame.width
        let twoDotsDistance = boxWidth / (dotsCount - 1)
        let padding = twoDotsDistance / (dotsCount)
        let twoDotsRealDistance = twoDotsDistance - padding
        
        for i in 0..<Int(dotsCount) {
            for j in 0..<Int(dotsCount) {
                let dot = DotView()
                dot.frame.origin.x = (CGFloat(i)*twoDotsRealDistance) + twoDotsRealDistance/3 + padding/3
                dot.frame.origin.y = (CGFloat(j)*twoDotsRealDistance) + twoDotsRealDistance/3 + padding/3
                self.addSubview(dot)
            }
        }
    }
}
